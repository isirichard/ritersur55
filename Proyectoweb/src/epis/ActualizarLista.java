package epis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ActualizarLista extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession misesion= req.getSession();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		String	nombre=req.getParameter("cargar");	
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try{
			
			String query = " select from " +ProductoRiego.class.getName() +" where nombre == '" +nombre + "'";
			List<ProductoRiego> ProductoRiego = (List<ProductoRiego>)pm.newQuery(query).execute();
			System.out.println(query);
			req.setAttribute("nombre", nombre);
			
			System.out.println();
			req.setAttribute("ProductoRiego", ProductoRiego);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/riegoShow.jsp");
		    rd.forward(req, resp);
		    
			out.println("<br><a href='riegoAdd.jsp'><button>ATRAS</button></a>"
					+ "<a href='/actualizarLista'><button>ACTUALIZAR LISTA</button></a>");
			System.out.println("si entre");
		}catch(Exception e){
			System.out.println("No grabe");
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='riegoAdd.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
			out.close();
		}
	}
	
}
