package SistemaDeActivos.logic;
// Generated 25-May-2019 01:33:06 by Hibernate Tools 4.3.1



/**
 * Grupo generated by hbm2java
 */
public class Grupo  implements java.io.Serializable {


     private GrupoId id;
     private Usuario usuario;

    public Grupo() {
    }

    public Grupo(GrupoId id, Usuario usuario) {
       this.id = id;
       this.usuario = usuario;
    }
   
    public GrupoId getId() {
        return this.id;
    }
    
    public void setId(GrupoId id) {
        this.id = id;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }




}

