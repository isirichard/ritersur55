package epis;


import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

public class Authenticator {
	 
	public String authenticate(String username, String password) {
	
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Usuario.class);
		String retorna="fail";
		try{
		
			List<Usuario> personas = (List<Usuario>) q.execute();
				
			for(Usuario p: personas){
				
				if ((p.getUsername().equalsIgnoreCase(username))
						&& (p.getPassword().equals(password))) 
					retorna="success";
					
				
			}
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
		return retorna;
	}
}
