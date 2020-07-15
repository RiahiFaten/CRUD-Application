package GestionEmp;

import java.util.List;

public interface Iemploye {
    public void ajoutEmploye(Employe E);
    public List<Employe> listEmployes();
    public void modificationEmploye(Employe E);
    public Employe getEmploye(int id);
    public void suppressionEmploye(int id);
    
}
