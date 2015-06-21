package epis;
import java.io.IOException;
import javax.servlet.http.*;
import javax.jdo.PersistenceManager;

@SuppressWarnings("serial")
public class RegistroController extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String correo=req.getParameter("login");
		String rol=req.getParameter("password");
		System.out.println(correo+" "+rol);
		if (rol.equals("Administrador"))
			rol="Administrador";			
		if (rol.equals("Usuario"))
			rol="Usuario";
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final UsuarioAd p = new UsuarioAd(correo, rol);
		try{
			pm.makePersistent(p);
			resp.getWriter().println("Datos grabados correctamente.");
			resp.setContentType("text/html");
			resp.getWriter().println("<a href='login.jsp'> Regresar </a>");;
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, vuelva a intentarlo.");
			resp.setContentType("text/html");
			resp.getWriter().println("<a href='login.jsp'> Regresar </a>");
		}finally{
			pm.close();
		}
		//System.out.println(rol+" "+correo);
		//resp.setContentType("text/plain");
		//resp.getWriter().println("Hello, world");
	}
}
