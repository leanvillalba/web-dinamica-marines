package entity;

public class VisitaEnTerreno {
	 private int idVisitaTerreno;
	    private String dia;
	    private String hora;
	    private String lugar;
	    private String comentarios;
	    public Cliente cliente;

	    /**
	     * Lista de revisiones asociadas a la visita en terreno.
	     */
	//    public List<Revision> revisionList = new ArrayList<>();

	    public VisitaEnTerreno() {
	    }

	    public VisitaEnTerreno(int idVisitaTerreno, String dia, String hora, String lugar, String comentarios) {
	        this.idVisitaTerreno = idVisitaTerreno;
	        this.dia = dia;
	        this.hora = hora;
	        this.lugar = lugar;
	        this.comentarios = comentarios;
	    }

	    public int getIdVisitaTerreno() {
	        return idVisitaTerreno;
	    }

	    public void setIdVisitaTerreno(int idVisitaTerreno) {
	        this.idVisitaTerreno = idVisitaTerreno;
	    }

	    public String getDia() {
	        return dia;
	    }

	    public void setDia(String dia) {
	        this.dia = dia;
	    }

	    public String getHora() {
	        return hora;
	    }

	    public void setHora(String hora) {
	        this.hora = hora;
	    }

	    public String getLugar() {
	        return lugar;
	    }

	    public void setLugar(String lugar) {
	        this.lugar = lugar;
	    }

	    public String getComentarios() {
	        return comentarios;
	    }

	    public void setComentarios(String comentarios) {
	        this.comentarios = comentarios;
	    }

	    @Override
	    public String toString() {
	        return "VisitaEnTerreno{" +
	                "idVisitaTerreno=" + idVisitaTerreno +
	                ", dia='" + dia + '\'' +
	                ", hora='" + hora + '\'' +
	                ", lugar='" + lugar + '\'' +
	                ", comentarios='" + comentarios + '\'' +
	                '}';
	    }
}
