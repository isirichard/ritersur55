package epis;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

import javax.jdo.PersistenceManager;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;

import java.util.List;

import javax.servlet.ServletException;
@SuppressWarnings("serial")
public class GmailController extends HttpServlet {
 public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

	 UserService us = UserServiceFactory.getUserService();
	 User user = us.getCurrentUser();
	 PersistenceManager pm = PMF.get().getPersistenceManager();
	 
	 if(user == null){
		 resp.sendRedirect(us.createLoginURL(req.getRequestURI()));
 	}else{
 		String query = " select from " +
 				UsuarioAd.class.getName()
 				+" where correo == '" +
 				user.getEmail() + "'";
 		System.out.println(query);
 		try{
 		@SuppressWarnings("unchecked")
		List<UsuarioAd> usuarios = (List<UsuarioAd>)pm.newQuery(query).execute();
 		System.out.println("se hizo consulta");
 		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>"+
		"<a href='"+ us.createLogoutURL(req.getRequestURI())+"'> Cerrar sesión </a>");
		System.out.println(usuarios);
		if (usuarios.isEmpty()){
 			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/error.jsp");
 			rd.forward(req, resp);
 	 	}
 		for(UsuarioAd u: usuarios){
 			System.out.println(u.getRol());
	 		if (u.getRol().equals("Administrador")){
	 			RequestDispatcher rd = getServletContext().getRequestDispatcher("/riegoAdd.jsp");
			rd.forward(req, resp);
	 		}
	 		if (u.getRol().equals("Usuario")){
	 			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
	 		rd.forward(req, resp);
	 	 	}
 		
 		}
 		
 		
		}catch(Exception e){
			System.out.println(e);
			System.out.println("No se logra consulta");
			PrintWriter out = resp.getWriter();
			out.println("<!DOCTYPE html>"+
			"<a href='"+ us.createLogoutURL(req.getRequestURI())+"'> Cerrar sesión </a>");
		}finally{
			pm.close();
		}
 	}
 }
}