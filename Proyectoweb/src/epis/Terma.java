package epis;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
/**
 * 
 * @author Audrey TB
 *
 */

@PersistenceCapable
public class Terma {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String tanque;
	
	@Persistent
	private String color;
	
	@Persistent
	private int lts;
	
	@Persistent
	private String capacidad;
	
	@Persistent
	private String cantidadCajas;
	
	@Persistent
	private String numeroTubos;
	
	@Persistent
	private String tipoCaja;
	
	@Persistent
	private String tamanoTubo;
	
	
	public Terma(String tanque,String color,int lts,String capacidad,String cantidadCajas, String numeroTubos,String tipoCaja,String tamanoTubo) {
		super();
		this.tanque=tanque;
		this.color=color;
		this.lts=lts;
		this.capacidad=capacidad;
		this.cantidadCajas=cantidadCajas;
		this.numeroTubos=numeroTubos;
		this.tipoCaja=tipoCaja;
		this.tamanoTubo=tamanoTubo;
	}


	public String getTanque() {
		return tanque;
	}


	public void setTanque(String tanque) {
		this.tanque = tanque;
	}


	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public int getLts() {
		return lts;
	}


	public void setLts(int lts) {
		this.lts = lts;
	}


	public String getCapacidad() {
		return capacidad;
	}


	public void setCapacidad(String capacidad) {
		this.capacidad = capacidad;
	}


	public String getCantidadCajas() {
		return cantidadCajas;
	}


	public void setCantidadCajas(String cantidadCajas) {
		this.cantidadCajas = cantidadCajas;
	}


	public String getNumeroTubos() {
		return numeroTubos;
	}


	public void setNumeroTubos(String numeroTubos) {
		this.numeroTubos = numeroTubos;
	}


	public String getTipoCaja() {
		return tipoCaja;
	}


	public void setTipoCaja(String tipoCaja) {
		this.tipoCaja = tipoCaja;
	}


	public String getTamanoTubo() {
		return tamanoTubo;
	}


	public void setTamanoTubo(String tamanoTubo) {
		this.tamanoTubo = tamanoTubo;
	}


	public void setKey(Key key) {
		this.key = key;
	}


	public Key getKey() {
		return key;
	}
	
	@Override
	public String toString() {
		String resp =tanque+":"+ color+":"+  lts+":"+ capacidad+":"+cantidadCajas  +":"+ numeroTubos+":"+ tipoCaja+":"+ tamanoTubo;  
		return resp;
	}
}