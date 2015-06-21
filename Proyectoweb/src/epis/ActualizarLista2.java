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

public class ActualizarLista2 extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		String	tanque=req.getParameter("cargar");	
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try{
			
			String query = " select from " +Terma.class.getName() +" where tanque == '" +tanque + "'";
			List<Terma> terma = (List<Terma>)pm.newQuery(query).execute();
			System.out.println(query);
			req.setAttribute("tanque", tanque);
			
			System.out.println();
			req.setAttribute("terma", terma);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/termaShow.jsp");
		    rd.forward(req, resp);
		    
			out.println("<br><a href='tanqueAdd.jsp'><button>ATRAS</button></a>"
					+ "<a href='/actualizarLista2'><button>ACTUALIZAR LISTA</button></a>");
			System.out.println("si entre");
		}catch(Exception e){
			System.out.println("No grabe");
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='termaShow.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
			out.close();
		}
	}
	
}
