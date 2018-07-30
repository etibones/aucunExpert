package ca.uSherbrooke.gegi.dao.offres;

public class Offre {
	private  String nom;
	private  String prenom;
	private   String ville;
	private   Integer id_ville;
	private   String libelle;
	private   String dateoffre;
	private   Integer nbplace;
	private   String bagage;
	private   String nom_car;
	private   Integer autoannee;
	private   String cip;
	private   Integer id_campus;
	private Integer id_offre;

	public   String getCip() { return cip;}
	public 	  int getId() { return id_offre;}
	public   String getNom() { return nom;}
	public   String getPrenom() { return prenom;}
	public   String getVille() { return ville;}
	public   Integer getIdVille() { return id_ville;}
	public   String getLibelle() { return libelle;}
	public   String getDateoffre() { return dateoffre;}
	public   Integer getNbplace() { return nbplace;}
	public   String getBagage() { return bagage;}
	public   String getAutonom() { return nom_car;}
	public   Integer getAutoannee() { return autoannee;}
	public   Integer getCampus() { return id_campus;}

	public void setAutoAnnee(Integer autoannee) {
		this.autoannee = autoannee;
	}

	public void setAutoNom(String nom_car) {
		this.nom_car = nom_car;
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

	public void setVille(String ville) {			// Set ID ville, mais on s'est trompe
		this.ville = ville;
	}

	public void setIDVille(int id_ville) { this.id_ville = id_ville;}

	public void setCip (String cip){
		this.cip = cip;
	}

	public void setCampus(int id_campus){
		this.id_campus = id_campus;
	}

	public void setId(int id) { this.id_offre = id;}

	@Override
	public String toString() {

		return (nom+","+prenom+","+ville+","+libelle+","+dateoffre+","+nbplace+","+bagage+","+nom_car+","+autoannee);
	}
}


