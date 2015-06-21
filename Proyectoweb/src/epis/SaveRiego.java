package epis;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;
public class SaveRiego extends HttpServlet {
	
	String nombre;
	int cantidad;
	String tipo;
	String medida;
	String espesor;
	String material;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession misesion= req.getSession(true);
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");	
		
		String producto = req.getParameter("save");
		
		try {
			  nombre =req.getParameter("nombre");
			  cantidad=Integer.parseInt(req.getParameter("cantidad"));
			  tipo=req.getParameter("tipo");
			  if(tipo==null||tipo.equals("enBlanco"))
				  tipo="";
			  medida=req.getParameter("medida");
			  if(medida==null||medida.equals("enBlanco"))
				  medida="";
			  espesor=req.getParameter("espesor");
			  if(espesor==null||espesor.equals("enBlanco"))
				  espesor="";
			  material=req.getParameter("material");
			  if(material==null||material.equals("enBlanco"))
				  material="";
	   
		  System.out.println(nombre+" "+cantidad+" "+tipo+" "+medida+" "+espesor+" "+material);
		  } 
	  catch(Exception e){
		 System.out.println("no entre");
	     System.out.println(e);
	  }finally { 
		  
	  }
		
		ProductoRiego p = new ProductoRiego(nombre,cantidad,tipo,medida,espesor,material);
		PersistenceManager pm = PMF.get().getPersistenceManager();
		misesion.setAttribute("nombre",nombre);
		try{
			
			pm.makePersistent(p);
			resp.getWriter().println("<br>Datos grabados correctamente");
			//mostrado registro del producto seleccionado
			
			String query = " select from " +ProductoRiego.class.getName() +" where nombre == '" +nombre + "'";
			List<ProductoRiego> ProductoRiego = (List<ProductoRiego>)pm.newQuery(query).execute();
			System.out.println(query);
			
			
			System.out.println();
			
			
			
			req.setAttribute("ProductoRiego", ProductoRiego);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/riegoShow.jsp");
		    rd.forward(req, resp);
		    
			out.println("<br><a href='registroUsuario.jsp'><button>ATRAS</button></a>"
					+ "<a href='loginUsuario.jsp'><button>Login</button></a>");
			System.out.println("si entre");
		}catch(Exception e){
			System.out.println("No grabe");
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='registro.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
			out.close();
		}
		  
	}
}
