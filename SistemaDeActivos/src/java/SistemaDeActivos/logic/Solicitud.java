package SistemaDeActivos.logic;
// Generated 25-May-2019 01:33:06 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Solicitud generated by hbm2java
 */
public class Solicitud  implements java.io.Serializable {


     private Integer numero;
     private Dependencia dependencia;
     private Funcionario funcionario;
     private String comprobante;
     private Date fecha;
     private String tipo;
     private String estado;
     private Set<Bien> biens = new HashSet<Bien>(0);

    public Solicitud() {
    }

	
    public Solicitud(Dependencia dependencia) {
        this.dependencia = dependencia;
    }
    public Solicitud(Dependencia dependencia, Funcionario funcionario, String comprobante, Date fecha, String tipo, String estado, Set<Bien> biens) {
       this.dependencia = dependencia;
       this.funcionario = funcionario;
       this.comprobante = comprobante;
       this.fecha = fecha;
       this.tipo = tipo;
       this.estado = estado;
       this.biens = biens;
    }
   
    public Integer getNumero() {
        return this.numero;
    }
    
    public void setNumero(Integer numero) {
        this.numero = numero;
    }
    public Dependencia getDependencia() {
        return this.dependencia;
    }
    
    public void setDependencia(Dependencia dependencia) {
        this.dependencia = dependencia;
    }
    public Funcionario getFuncionario() {
        return this.funcionario;
    }
    
    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }
    public String getComprobante() {
        return this.comprobante;
    }
    
    public void setComprobante(String comprobante) {
        this.comprobante = comprobante;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Set<Bien> getBiens() {
        return this.biens;
    }
    
    public void setBiens(Set<Bien> biens) {
        this.biens = biens;
    }




}


