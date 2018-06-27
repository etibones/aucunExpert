package ca.uSherbrooke.gegi.dao.offres;

public class Offre {
	private static String nom;
	private static String prenom;
	private static String ville;
	private static String libelle;
	private static String dateoffre;
	private static Integer nbplace;
	private static String bagage;
	private static String autonom;
	private static Integer autoannee;
	private static String cip;

	public static String getCip() { return cip;}
	public static String getNom() { return nom;}
    public static String getPrenom() { return prenom;}
    public static String getVille() { return ville;}
    public static String getLibelle() { return libelle;}
    public static String getDateoffre() { return dateoffre;}
    public static Integer getNbplace() { return nbplace;}
    public static String getBagage() { return bagage;}
    public static String getAutonom() { return autonom;}
    public static Integer getAutoannee() { return autoannee;}

	public void setAutoAnnee(Integer autoannee) {
		this.autoannee = autoannee;
	}

	public void setAutoNom(String autonom) {
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

	public void setCip (String cip){
		this.cip = cip;
	}

	@Override
	public String toString() {

		return (nom+","+prenom+","+ville+","+libelle+","+dateoffre+","+nbplace+","+bagage+","+autonom+","+autoannee);
	}
}


