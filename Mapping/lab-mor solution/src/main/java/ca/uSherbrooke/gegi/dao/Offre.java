package ca.uSherbrooke.gegi.dao;

import java.util.List;

public class Offre {
	private static String nom;
	private String prenom;
	private String ville;
	private String libelle;
	private String dateoffre;
	private Integer nbplace;
	private String bagage;
	private String autonom;
	private Integer autoannee;

	public static String getNom(){return nom;}
    public String getPrenom(){return prenom;}
    public String getVille(){return ville;}
    public String getLibelle(){return libelle;}
    public String getDateoffre(){return dateoffre;}
    public Integer getNbplace(){return nbplace;}
    public String getBagage(){return bagage;}
    public String getAutonom(){return autonom;}
    public Integer getAutoannee(){return autoannee;}

	public void setAutoannee(Integer autoannee) {
		this.autoannee = autoannee;
	}

	public void setAutonom(String autonom) {
		this.autonom = autonom;
	}

	public void setBagage(String bagage) {
		this.bagage = bagage;
	}

	public void setDateoffre(String dateoffre) {
		this.dateoffre = dateoffre;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public void setNbplace(Integer nbplace) {
		this.nbplace = nbplace;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	@Override
	public String toString() {

		return (nom+","+prenom+","+ville+","+libelle+","+dateoffre+","+nbplace+","+bagage+","+autonom+","+autoannee);

		/*return "Offre{" +
				"prenom=" + prenom+
				", nom='" + nom + '\'' +
				", ville='" + ville + '\'' +
				", libelle='" + libelle + '\'' +
				", dateoffre='" + dateoffre + '\'' +
				", nbplace='" + nbplace + '\'' +
				", bagage='" + bagage + '\'' +
				", autonom='" + autonom + '\'' +
				", autoannee='" + autoannee + '\'' +
				'}';*/
	}
}


