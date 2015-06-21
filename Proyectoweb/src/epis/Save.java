package epis;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Save extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	public Save() {
		super();
	}
 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		String user = req.getParameter("username");
		String password = req.getParameter("password");
		String dni = req.getParameter("dni");
		
		Usuario p = new Usuario(user,password,dni);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			pm.makePersistent(p);
			
			resp.getWriter().println("<br>Datos grabados correctamente");
			out.println("<br><a href='login.jsp'><button>ATRAS</button></a>"
					+ "<a href='index.jsp'><button>Login</button></a>");
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='login.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
}
