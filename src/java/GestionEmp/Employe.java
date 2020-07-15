package GestionEmp;

import java.io.Serializable;

public class Employe implements Serializable {
    
    private int id;
    private String nom;
    private String prenom;
    private String daten;
    private String adresse;
    private int numtel;
    private String dateemb;
    private String poste;
    private int dep;
    private float sal;

    public Employe() {
        super();
    }

    public Employe(String nom, String prenom, String daten, String adresse, int numtel, String dateemb, String poste, int dep, float sal) {
        super();
        this.nom = nom;
        this.prenom = prenom;
        this.daten = daten;
        this.adresse = adresse;
        this.numtel = numtel;
        this.dateemb = dateemb;
        this.poste = poste;
        this.dep = dep;
        this.sal = sal;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getDaten() {
        return daten;
    }

    public void setDaten(String daten) {
        this.daten = daten;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public int getNumtel() {
        return numtel;
    }

    public void setNumtel(int numtel) {
        this.numtel = numtel;
    }

    public String getDateemb() {
        return dateemb;
    }

    public void setDateemb(String dateemb) {
        this.dateemb = dateemb;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public int getDep() {
        return dep;
    }

    public void setDep(int dep) {
        this.dep = dep;
    }

    public float getSal() {
        return sal;
    }

    public void setSal(float sal) {
        this.sal = sal;
    }
    
    
    
}
