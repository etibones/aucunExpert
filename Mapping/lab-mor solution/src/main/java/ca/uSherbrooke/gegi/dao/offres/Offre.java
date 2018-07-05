<<<<<<< HEAD:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/offres/Offre.java
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
	private static Integer campus;

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
	public static Integer getCampus() { return campus;}

	public void setAutoAnnee(Integer autoannee) {
=======
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

	public void setAutoannee(Integer autoannee) {
>>>>>>> parent of d5fe2b9... (Mapping + Cas+ Servlet) fonctionnel:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/Offre.java
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

	public void setCampus(int campus){
		this.campus = campus;
	}

	@Override
	public String toString() {
<<<<<<< HEAD:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/offres/Offre.java

<<<<<<< HEAD:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/Offre.java
		return (nom + "," + prenom + "," + ville + "," + libelle + "," + dateoffre + "," + nbplace + "," + bagage + "," + autonom + "," + autoannee);

		/*return "Offre{" +
=======
		return "Offre{" +
>>>>>>> parent of d5fe2b9... (Mapping + Cas+ Servlet) fonctionnel:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/Offre.java
				"prenom=" + prenom+
				", nom='" + nom + '\'' +
				", ville='" + ville + '\'' +
				", libelle='" + libelle + '\'' +
				", dateoffre='" + dateoffre + '\'' +
				", nbplace='" + nbplace + '\'' +
				", bagage='" + bagage + '\'' +
				", autonom='" + autonom + '\'' +
				", autoannee='" + autoannee + '\'' +
<<<<<<< HEAD:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/offres/Offre.java
				'}';*/
=======
		return (nom+","+prenom+","+ville+","+libelle+","+dateoffre+","+nbplace+","+bagage+","+autonom+","+autoannee);
>>>>>>> Nadir:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/offres/Offre.java
=======
				'}';
>>>>>>> parent of d5fe2b9... (Mapping + Cas+ Servlet) fonctionnel:Mapping/lab-mor solution/src/main/java/ca/uSherbrooke/gegi/dao/Offre.java
	}
}


