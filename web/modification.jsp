<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="GestionEmp.EmployeModel"%>
<%@ include file="/bienvenu.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Modification d'un Employé - GE</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
    </head>
    <body>
           <div class="modal-dialog">
	      <div class="modal-content">
               <form action="controlleur.php?action=modifier&mode=modifier&id=${model.employe.id}" method="post">
                <input type="hidden" value="modifier" name="mode"/>
                <div class="modal-header">						
		 <h4 class="modal-title">Modifier un Employé</h4>
		</div> 
                <div class="modal-body">
                    <div class="form-group">
                       <label>Nom</label>
                       <input type="text" name="nom" value="${model.employe.nom}" class="form-control" required> 
                    </div> 
                    <div class="form-group">
                       <label>Prénom</label>
		       <input type="text" name="prenom" value="${model.employe.prenom}" class="form-control" required> 
                    </div>    
                    
                    <div class="form-group">
                       <label>Date de naissance</label>
		       <input type="text" name="dn" value="${model.employe.daten}" class="form-control" required> 
                    </div> 
                    <div class="form-group">
                       <label>Adresse</label>
		       <input type="text" name="adresse" value="${model.employe.adresse}" class="form-control" required> 
                    </div> 
                    <div class="form-group">
                       <label>Adresse</label>
		       <input type="text" name="adresse" value="${model.employe.adresse}" class="form-control" required> 
                    </div> 
                    <div class="form-group">
                       <label>Téléphone</label>
		       <input type="text" name="nt" value="${model.employe.numtel}" class="form-control" required> 
                    </div>
                    <div class="form-group">
                       <label>Date d'embauche</label>
		       <input type="text" name="de" value="${model.employe.dateemb}" class="form-control" required> 
                    </div>
                    <div class="form-group">
                       <label>Poste</label>
		       <input type="text" name="poste" value="${model.employe.poste}" class="form-control" required> 
                    </div>
                    <div class="form-group">
                       <label>Département</label>
		       <input type="text" name="departement" value="${model.employe.dep}" class="form-control" required> 
                    </div>
                    <div class="form-group">
                       <label>Salaire</label>
		       <input type="text" name="salaire" value="${model.employe.sal}" class="form-control" required> 
                    </div>
                </div>
                <div class="modal-footer">
                  <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
		  <input type="submit" class="btn btn-info" value="Valider">
                  
                </div>
              </form>  
            </div>  
            </div>
                           
           <div>
                ${model.erreurs}
            </div>
    </body>
</html>
