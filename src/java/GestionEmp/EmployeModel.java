package GestionEmp;

import java.util.ArrayList;
import java.util.List;

public class EmployeModel {
    private List<Employe> employes=new ArrayList<Employe>();
    private Employe employe=new Employe();
    private user user=new user();
    private String erreurs;

    public Employe getEmploye() {
        return employe;
    }

    public void setEmploye(Employe employe) {
        this.employe = employe;
    }
    

    public List<Employe> getEmployes() {
        return employes;
    }

    public void setEmployes(List<Employe> employes) {
        this.employes = employes;
    }

    public String getErreurs() {
        return erreurs;
    }

    public void setErreurs(String erreurs) {
        this.erreurs = erreurs;
    }
    
   

    public user getUser() {
        return user;
    }

    public void setUser(user user) {
        this.user = user;
    }
    
    
    
}
