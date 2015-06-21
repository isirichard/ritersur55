package epis;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class UsuarioAd {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String correo;
	
	@Persistent
	private String rol;
	

	public UsuarioAd(String correo, String rol) {
		super();
		this.correo = correo;
		this.rol = rol;

	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	public Key getKey() {
		return key;
	}
	
	@Override
	public String toString() {
		String resp = correo + " : " + rol;  
		return resp;
	}
}
