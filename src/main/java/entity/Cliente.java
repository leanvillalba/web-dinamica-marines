package entity;

public class Cliente extends Usuario{
	private String nombreEmpresa;
	private String giroEmpresa;
	private String rutEmpresa;
	private String telefonoRepresentante;
	private String direccionEmpresa;
	private String comunaEmpresa;
	
	public Cliente() {
		super();
	}

	public Cliente(String nombreEmpresa, String giroEmpresa, String rutEmpresa, String telefonoRepresentante,
			String direccionEmpresa, String comunaEmpresa) {
		super();
		this.nombreEmpresa = nombreEmpresa;
		this.giroEmpresa = giroEmpresa;
		this.rutEmpresa = rutEmpresa;
		this.telefonoRepresentante = telefonoRepresentante;
		this.direccionEmpresa = direccionEmpresa;
		this.comunaEmpresa = comunaEmpresa;
	}

	@Override
	public String toString() {
		return "Cliente [nombreEmpresa=" + nombreEmpresa + ", giroEmpresa=" + giroEmpresa + ", rutEmpresa=" + rutEmpresa
				+ ", telefonoRepresentante=" + telefonoRepresentante + ", direccionEmpresa=" + direccionEmpresa
				+ ", comunaEmpresa=" + comunaEmpresa + "]";
	}
	
	

}
