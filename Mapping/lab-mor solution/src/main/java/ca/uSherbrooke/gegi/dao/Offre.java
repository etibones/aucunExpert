package ca.uSherbrooke.gegi.dao;
public class Offre {
	private String nom;
	private String prenom;
	private String ville;
	private String libelle;
	private String dateoffre;
	private Integer nbplace;
	private String bagage;
	private String autonom;
	private Integer autoannee;

	public String getNom(){return nom;}
    public String getPrenom(){return prenom;}
    public String getVille(){return ville;}
    public String getLibelle(){return libelle;}
    public String getDateoffre(){return dateoffre;}
    public Integer getNbplace(){return nbplace;}
    public String getBagage(){return bagage;}
    public String getAutonom(){return autonom;}
    public Integer getAutoannee(){return autoannee;}


	@Override
	public String toString() {
		return "Offre{" +
				"prenom=" + prenom+
				", nom='" + nom + '\'' +
				", ville='" + ville + '\'' +
				", libelle='" + libelle + '\'' +
				", dateoffre='" + dateoffre + '\'' +
				", nbplace='" + nbplace + '\'' +
				", bagage='" + bagage + '\'' +
				", autonom='" + autonom + '\'' +
				", autoannee='" + autoannee + '\'' +
				'}';
	}
}


