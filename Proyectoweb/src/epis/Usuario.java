package epis;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Usuario {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String username;
	
	@Persistent
	private String password;
	
	@Persistent
	private String dni;
	 
	public Usuario(String username, String password){
		this.username = username;
		this.password = password;
	}
	public Usuario(String username, String password,String dni){
		this.username = username;
		this.password = password;
		this.dni	  = dni;
	}
 
	public String getUsername() {
		return username;
	}
 
	public void setUsername(String username) {
		this.username = username;
	}
 
	public String getPassword() {
		return password;
	}
 
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getDni() {
		return dni;
	}
 
}