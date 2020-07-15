package GestionEmp;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EmployeServlet extends HttpServlet {

   private EmpImp metier;
   
   @Override
   public void init() throws ServletException {
       metier=new EmpImp();
   }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);

    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EmployeModel model=new EmployeModel();
        request.setAttribute("model",model);
        String action=request.getParameter("action");
        String mode=request.getParameter("mode");
        if(action!=null){
            
            if(action.equals("login")){
                user u=metier.getUser();
                model.setUser(u);
                String nomu=request.getParameter("nomu");
                String pw=request.getParameter("pw");
                if (nomu.equals(model.getUser().getNomu()) && pw.equals(model.getUser().getPw())){
                    RequestDispatcher rd=request.getRequestDispatcher("bienvenu.jsp");
                    rd.forward(request, response);
                }
                else{
                   RequestDispatcher rd=request.getRequestDispatcher("erreurlogin.jsp");
                    rd.forward(request, response);
                }  
                
            }
            else if(action.equals("consulter")){
                List<Employe> employes=metier.listEmployes();
                model.setEmployes(employes);
                
                RequestDispatcher rd=request.getRequestDispatcher("consultation.jsp");
                rd.forward(request, response);
                
            }
            else if(action.equals("modifier") && mode.equals("modifier")){
               try{
                int id=Integer.parseInt(request.getParameter("id"));
                Employe e=metier.getEmploye(id);
                model.setEmploye(e);
                /***************/
                model.getEmploye().setNom(request.getParameter("nom"));
                model.getEmploye().setPrenom(request.getParameter("prenom"));
                model.getEmploye().setDaten(request.getParameter("dn"));
                model.getEmploye().setAdresse(request.getParameter("adresse"));
                model.getEmploye().setNumtel(Integer.parseInt(request.getParameter("nt")));
                model.getEmploye().setDateemb(request.getParameter("de"));
                model.getEmploye().setPoste(request.getParameter("poste"));
                model.getEmploye().setDep(Integer.parseInt(request.getParameter("departement")));
                model.getEmploye().setSal(Float.parseFloat(request.getParameter("salaire")));
                /******************/
                metier.modificationEmploye(model.getEmploye());
                model.setEmployes(metier.listEmployes());
                List<Employe> employes=metier.listEmployes();
                model.setEmployes(employes);
                
                RequestDispatcher rd=request.getRequestDispatcher("consultation.jsp");
                rd.forward(request, response);
                }
                catch(Exception ex){
                  model.setErreurs(ex.getMessage());
                }  
                  
                
            }
            else if(action.equals("pourmodifier")){
                 try{
                int id=Integer.parseInt(request.getParameter("id"));
                Employe e=metier.getEmploye(id);
                model.setEmploye(e);
                
                model.setEmployes(metier.listEmployes());
                List<Employe> employes=metier.listEmployes();
                model.setEmployes(employes);
                
                RequestDispatcher rd=request.getRequestDispatcher("modification.jsp");
                rd.forward(request, response);
                }
                catch(Exception ex){
                  model.setErreurs(ex.getMessage());
                }  
                  
                
                
            }
            else if(action.equals("pourajouter")){
                RequestDispatcher rd=request.getRequestDispatcher("ajout.jsp");
                rd.forward(request, response);
                
            }
            else if(action.equals("supprimer")){
                int id=Integer.parseInt(request.getParameter("id"));
                metier.suppressionEmploye(id);
                model.setEmployes(metier.listEmployes());
                RequestDispatcher rd=request.getRequestDispatcher("consultation.jsp");
                rd.forward(request, response);
                
            }
            
            else if((action.equals("ajouter"))  && (mode.equals("ajout"))){
              try{  
                model.getEmploye().setNom(request.getParameter("nom"));
                model.getEmploye().setPrenom(request.getParameter("prenom"));
                model.getEmploye().setDaten(request.getParameter("dn"));
                model.getEmploye().setAdresse(request.getParameter("adresse"));
                model.getEmploye().setNumtel(Integer.parseInt(request.getParameter("nt")));
                model.getEmploye().setDateemb(request.getParameter("de"));
                model.getEmploye().setPoste(request.getParameter("poste"));
                model.getEmploye().setDep(Integer.parseInt(request.getParameter("departement")));
                model.getEmploye().setSal(Float.parseFloat(request.getParameter("salaire")));
               
                  {metier.ajoutEmploye(model.getEmploye());}
              
                model.setEmployes(metier.listEmployes());}
              catch(Exception e){
                  model.setErreurs(e.getMessage());
              }
              
              RequestDispatcher rd=request.getRequestDispatcher("consultation.jsp");
              rd.forward(request, response);

        }
        }
        
        
    }
    
 
}
