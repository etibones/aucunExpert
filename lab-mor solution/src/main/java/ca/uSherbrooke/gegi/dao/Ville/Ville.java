package ca.uSherbrooke.gegi.dao.Ville;

public class Ville {
	private  int id_ville;
	private   String libelle_ville;


	public   String getLibelle() { return libelle_ville;}
	public 	  int getId() { return id_ville;}


	@Override
	public String toString() {

		return (id_ville + "," + libelle_ville);
	}
}


