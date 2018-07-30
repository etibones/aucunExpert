package ca.uSherbrooke.gegi.dao.usager;
public class Usagercarac {
    private String cip ;
    private  String[] temp;

    public Usagercarac(String cip) {
        this.cip = cip;
        temp = VueUsager.Vue(cip).toString().split(",");
    }
    public void setCip(String n_cip) {
        cip = n_cip;
        System.out.println(cip+", "+n_cip);
    }



    public String getNom() {
        return temp[0];
    }

    public String getPrenom() {
        return temp[1];
    }

    public String getCouriel() {
        return temp[2];
    }

    public String getPrivilege() {
        return temp[3];
    }

}