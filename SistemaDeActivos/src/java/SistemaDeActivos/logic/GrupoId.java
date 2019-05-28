package SistemaDeActivos.logic;
// Generated 25-May-2019 01:33:06 by Hibernate Tools 4.3.1



/**
 * GrupoId generated by hbm2java
 */
public class GrupoId  implements java.io.Serializable {


     private String grupo;
     private String id;

    public GrupoId() {
    }

    public GrupoId(String grupo, String id) {
       this.grupo = grupo;
       this.id = id;
    }
   
    public String getGrupo() {
        return this.grupo;
    }
    
    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof GrupoId) ) return false;
		 GrupoId castOther = ( GrupoId ) other; 
         
		 return ( (this.getGrupo()==castOther.getGrupo()) || ( this.getGrupo()!=null && castOther.getGrupo()!=null && this.getGrupo().equals(castOther.getGrupo()) ) )
 && ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getGrupo() == null ? 0 : this.getGrupo().hashCode() );
         result = 37 * result + ( getId() == null ? 0 : this.getId().hashCode() );
         return result;
   }   


}


