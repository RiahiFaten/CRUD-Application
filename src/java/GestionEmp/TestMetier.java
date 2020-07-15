package GestionEmp;

import java.util.List;

public class TestMetier {
    public static void main(String[] args){
    
        EmpImp metier= new EmpImp();
        user e=new user();
               /* metier.ajoutEmploye(new Employe("Sergi","Roberto","15-04-1994","Barcelona",662452455,"03-09-2005","salesman",3,1700));*/

    /*List<Employe> employes=metier.listEmployes();
    for(Employe e:employes){
        System.out.println(Integer.toString(e.getId())+" "+e.getNom());
    }*/
    
    /*metier.suppressionEmploye(8);*/
    e=metier.getUser();
    System.out.println(Integer.toString(e.getIdu()));
    System.out.println(e.getNomu());
    System.out.println(e.getMail());
    System.out.println(e.getPw());

    
    }
    
}
