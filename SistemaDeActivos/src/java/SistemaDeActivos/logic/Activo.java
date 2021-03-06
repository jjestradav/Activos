package SistemaDeActivos.logic;
// Generated 25-May-2019 01:33:06 by Hibernate Tools 4.3.1



/**
 * Activo generated by hbm2java
 */
public class Activo  implements java.io.Serializable {


     private Integer codigo;
     private Bien bien;
     private Categoria categoria;
     private Dependencia dependencia;
     private Funcionario funcionario;
     private int consecutivo;
     private String puesto;

    public Activo() {
    }

	
    public Activo(Bien bien, Categoria categoria, int consecutivo) {
        this.bien = bien;
        this.categoria = categoria;
        this.consecutivo = consecutivo;
    }
    public Activo(Bien bien, Categoria categoria, Dependencia dependencia, Funcionario funcionario, int consecutivo, String puesto) {
       this.bien = bien;
       this.categoria = categoria;
       this.dependencia = dependencia;
       this.funcionario = funcionario;
       this.consecutivo = consecutivo;
       this.puesto = puesto;
    }
   
    public Integer getCodigo() {
        return this.codigo;
    }
    
    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }
    public Bien getBien() {
        return this.bien;
    }
    
    public void setBien(Bien bien) {
        this.bien = bien;
    }
    public Categoria getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
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
    public int getConsecutivo() {
        return this.consecutivo;
    }
    
    public void setConsecutivo(int consecutivo) {
        this.consecutivo = consecutivo;
    }
    public String getPuesto() {
        return this.puesto;
    }
    
    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }




}


