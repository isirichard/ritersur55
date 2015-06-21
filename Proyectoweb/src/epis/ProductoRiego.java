package epis;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class ProductoRiego {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	@Persistent
	private int cantidad;
	@Persistent
	private String tipo;
	@Persistent
	private String medida;
	@Persistent
	private String espesor;
	@Persistent
	private String material;
	public ProductoRiego(String nombre, int cantidad,String tipo,String medida,String espesor,String material){
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.tipo = tipo;
		this.medida = medida;
		this.espesor = espesor;
		this.material = material;
		
	}
	public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getMedida() {
		return medida;
	}
	public void setMedida(String medida) {
		this.medida = medida;
	}
	public String getEspesor() {
		return espesor;
	}
	public void setEspesor(String espesor) {
		this.espesor = espesor;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	
}

