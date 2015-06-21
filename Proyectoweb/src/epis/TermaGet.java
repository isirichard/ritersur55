package epis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class TermaGet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession misesion2= req.getSession(true);
	
		String tanque = req.getParameter("tanque");
		String color = req.getParameter("color");
		String lts = req.getParameter("lts");
		String capacidad = req.getParameter("capacidad");
		String cantidadCajas = req.getParameter("cantidadCajas");
		String numeroTubos = req.getParameter("numeroTubos");
		String tipoCaja = req.getParameter("tipoCaja");
		String tamanoTubo = req.getParameter("tamanoTubo");
		int litros=Integer.parseInt(lts);

		Terma t = new Terma(tanque, color, litros,capacidad,cantidadCajas,numeroTubos,tipoCaja,tamanoTubo);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			pm.makePersistent(t);
			
		}catch(Exception e){
			System.out.println(e);
			
		}finally{
			PrintWriter out = resp.getWriter();
			resp.setContentType("text/html");
			Query q = pm.newQuery(Terma.class);
			
			List<Terma> termas = (List<Terma>) q.execute();
			
			out.println("<!DOCTYPE html><html><head><title>Terma</title></head><body>"
					+ "<style>"
					+ "#formulario{ "
					+ "margin:0px 500px 50px 500px; "
					+ "}"
					
					+ "</style>");
			for(Terma o: termas){
				out.print("<div id=formulario><fieldset><legend><center>Usuario</center></legend>"
						+ "<h4>Tanque:"+o.getTanque()
						+ "<h4>Color:"+o.getColor()
						+ "<h4>Litros:"+o.getLts()
						+ "<h4>Capacidad:"+o.getCapacidad()
						+ "<h4>CantidadCajas:"+o.getCantidadCajas()
						+ "<h4>NumeroTubos:"+o.getNumeroTubos()
						+ "<h4>TamañoTubo:"+o.getTamanoTubo());
				
				out.print("</ul></fielset></div>");
			}
			out.println("</body></html>");
			
			pm.close();
		}
	}
}