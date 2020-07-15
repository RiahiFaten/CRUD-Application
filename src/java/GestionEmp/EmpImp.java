package GestionEmp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EmpImp implements Iemploye {

    @Override
    public void ajoutEmploye(Employe E) {
        Connection conn=Connexion.getConnection();
        try {
            PreparedStatement ps=conn.prepareStatement("insert into Employe (nom,prenom,daten,adresse,numtel,dateemb,poste,departement,salaire) values (?,?,?,?,?,?,?,?,?)");
            ps.setString(1, E.getNom());
            ps.setString(2, E.getPrenom());
            ps.setString(3, E.getDaten());
            ps.setString(4, E.getAdresse());
            ps.setInt(5, E.getNumtel());
            ps.setString(6, E.getDateemb());
            ps.setString(7, E.getPoste());
            ps.setInt(8, E.getDep());
            ps.setFloat(9, E.getSal());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public List<Employe> listEmployes() {
        
        List<Employe> Employes= new ArrayList<Employe>();
        Connection conn=Connexion.getConnection();
          try {
            PreparedStatement ps=conn.prepareStatement("select * from employe");
           
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Employe e=new Employe();
                e.setId(rs.getInt("id"));
                e.setNom(rs.getString("nom"));
                e.setPrenom(rs.getString("prenom"));
                e.setDaten(rs.getString("daten"));
                e.setAdresse(rs.getString("adresse"));
                e.setNumtel(rs.getInt("numtel"));
                e.setDateemb(rs.getString("dateemb"));
                e.setPoste(rs.getString("poste"));
                e.setDep(rs.getInt("departement"));
                e.setSal(rs.getFloat("salaire"));
                Employes.add(e);
            }
            ps.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } 
          return Employes;
    }
    
    @Override
    public Employe getEmploye(int id) {
         Employe e=new Employe();
        try {
          PreparedStatement ps =Connexion.getConnection().prepareStatement("select * from employe where id=?");			 
	  ps.setInt(1 ,id);
	  ResultSet rs = ps.executeQuery();  
	   while(rs.next()){
               
                e.setId(rs.getInt("id"));
                e.setNom(rs.getString("nom"));
                e.setPrenom(rs.getString("prenom"));
                e.setDaten(rs.getString("daten"));
                e.setAdresse(rs.getString("adresse"));
                e.setNumtel(rs.getInt("numtel"));
                e.setDateemb(rs.getString("dateemb"));
                e.setPoste(rs.getString("poste"));
                e.setDep(rs.getInt("departement"));
                e.setSal(rs.getFloat("salaire"));
                
            }
	    ps.close();
	    } catch (Exception ex) {
		ex.printStackTrace();
	    }
	    return e;
	}

    @Override
    public void modificationEmploye(Employe E) {
        Connection conn=Connexion.getConnection();
        try {
            PreparedStatement ps=conn.prepareStatement("update Employe set nom=?,prenom=?,daten=?,adresse=?,numtel=?,dateemb=?,poste=?,departement=?,salaire=? where id=?");
            ps.setString(1, E.getNom());
            ps.setString(2, E.getPrenom());
            ps.setString(3, E.getDaten());
            ps.setString(4, E.getAdresse());
            ps.setInt(5, E.getNumtel());
            ps.setString(6, E.getDateemb());
            ps.setString(7, E.getPoste());
            ps.setInt(8, E.getDep());
            ps.setFloat(9, E.getSal());
            ps.setInt(10, E.getId());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void suppressionEmploye(int id) {
        Connection conn=Connexion.getConnection();
        try {
            PreparedStatement ps=conn.prepareStatement("delete from Employe where id=?");
            ps.setInt(1, id);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }
    
    public user getUser() {
         user u=new user();
        try {
          PreparedStatement ps =Connexion.getConnection().prepareStatement("select * from user");			 
	  ResultSet rs = ps.executeQuery();  
	   while(rs.next()){
               
                u.setIdu(rs.getInt("idu"));
                u.setNomu(rs.getString("nomu"));
                u.setMail(rs.getString("mail"));
                u.setPw(rs.getString("pw"));
            }
	    ps.close();
	    } catch (Exception ex) {
		ex.printStackTrace();
	    }
	    return u;
	}
    
    
}
