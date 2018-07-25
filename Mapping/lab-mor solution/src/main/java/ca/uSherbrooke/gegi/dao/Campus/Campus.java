package ca.uSherbrooke.gegi.dao.Campus;

public class Campus {
	private  int id_campus;
	private   String nom_campus;


	public   String getCampus() { return nom_campus;}
	public 	  int getId() { return id_campus;}


	@Override
	public String toString() {

		return (id_campus + "," + nom_campus);
	}
}


