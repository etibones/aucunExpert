package ca.uSherbrooke.gegi.dao.offres;

public class Offre {
	private  String nom;
	private  String prenom;
	private   String ville;
	private   String libelle;
	private   String dateoffre;
	private   Integer nbplace;
	private   String bagage;
	private   String autonom;
	private   Integer autoannee;
	private   String cip;
	private   Integer campus;

	public   String getCip() { return cip;}
	public   String getNom() { return nom;}
	public   String getPrenom() { return prenom;}
	public   String getVille() { return ville;}
	public   String getLibelle() { return libelle;}
	public   String getDateoffre() { return dateoffre;}
	public   Integer getNbplace() { return nbplace;}
	public   String getBagage() { return bagage;}
	public   String getAutonom() { return autonom;}
	public   Integer getAutoannee() { return autoannee;}
	public   Integer getCampus() { return campus;}

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

	public void setCampus(int campus){
		this.campus = campus;
	}

	@Override
	public String toString() {

		return (nom+","+prenom+","+ville+","+libelle+","+dateoffre+","+nbplace+","+bagage+","+autonom+","+autoannee);
	}
}


