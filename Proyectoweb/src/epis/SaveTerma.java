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
public class SaveTerma extends HttpServlet {
	
	String tanque;
	String color;
	int lts;
	String capacidad;
	String cantidadCajas;
	String numeroTubos;
	String tipoCaja;
	String tamanoTubo;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession misesion= req.getSession();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");	
		
		String producto = req.getParameter("save");
		
		try {
			tanque =req.getParameter("tanque");
			color =req.getParameter("color");
			lts=Integer.parseInt(req.getParameter("lts"));
			capacidad=req.getParameter("capacidad");
			  if(capacidad==null||capacidad.equals("enBlanco"))
				  capacidad="";
			  cantidadCajas=req.getParameter("cantidadCajas");
			  if(cantidadCajas==null||cantidadCajas.equals("enBlanco"))
				  cantidadCajas="";
			  numeroTubos=req.getParameter("numeroTubos");
			  if(numeroTubos==null||numeroTubos.equals("enBlanco"))
				  numeroTubos="";
			  tipoCaja=req.getParameter("tipoCaja");
			  if(tipoCaja==null||tipoCaja.equals("enBlanco"))
				  tipoCaja="";
			  tamanoTubo=req.getParameter("tamanoTubo");
			  if(tamanoTubo==null||tamanoTubo.equals("enBlanco"))
				  tamanoTubo="";
	   
		  System.out.println(tanque+" "+color+" "+lts+" "+capacidad+" "+cantidadCajas+" "+numeroTubos+" "+tipoCaja+" "+tamanoTubo);
		  } 
	  catch(Exception e){
		 System.out.println("no entre");
	     System.out.println(e);
	  }finally { 
		  
	  }
		
		Terma p = new Terma(tanque,color,lts,capacidad,cantidadCajas,numeroTubos,tipoCaja,tamanoTubo);
		PersistenceManager pm = PMF.get().getPersistenceManager();
		misesion.setAttribute("tanque",tanque);
		try{
			
			pm.makePersistent(p);
			resp.getWriter().println("<br>Datos grabados correctamente");
			//mostrado registro del producto seleccionado
			
			String query = " select from " +Terma.class.getName() +" where tanque == '" +tanque + "'";
			List<Terma> terma = (List<Terma>)pm.newQuery(query).execute();
			System.out.println(query);
			
			
			System.out.println();
			
			
			req.setAttribute("terma", terma);
			req.setAttribute("tanque", tanque);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/termaShow.jsp");
		    rd.forward(req, resp);
		    
			out.println("<br><a href='termaAdd.jsp'><button>ATRAS</button></a>"
					+ "<a href='actualizarLista2'><button>verTerma Registrada</button></a>");
			System.out.println("si entre");
		}catch(Exception e){
			System.out.println("No grabe");
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='termaAdd.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
			out.close();
		}
		  
	}
}
