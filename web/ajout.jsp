<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/bienvenu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Ajout d'un Employé - GE</title>
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
                <form action="controlleur.php?action=ajouter" method="post">
                  <input type="hidden" value="ajout" name="mode"/>
                  <div class="modal-header">						
		    <h4 class="modal-title">Ajouter un Employé</h4>
		  </div>
                  <div class="modal-body">					
		      <div class="form-group">
			<label>Nom</label>
                        <input type="text" name="nom" title="Le nom ne doit contenir que les lettres" class="form-control" required />

                      </div>
                     
                     <div class="form-group">
                         <label>Prenom</label>
                        <input type="text" name="prenom" title="Le prénom ne doit contenir que les lettres" class="form-control" required />						
                     </div>
                     <div class="form-group">
                         <label>Date de naissance</label>
                        <input type="text" name="dn" title="La date de naissance doit  être de la forme YYYY-MM-JJ " class="form-control" required />						
                     </div>
                      <div class="form-group">
                         <label>Adresse</label>
                        <input type="text" name="adresse" title="L'adresse doit contenir des caractères alphanumériques"  class="form-control" required />						
                      </div>
                      <div class="form-group">
                         <label>Téléphone</label>
                        <input type="number" name="nt" title="Le téléphone ne doit contenir que des chiffres" class="form-control" required />
                      </div>
                     <div class="form-group">
                         <label>Date d'embauche</label>
                        <input type="text" name="de" title="La date d'embauche doit  être de la forme YYYY-MM-JJ " class="form-control" required />						
                     </div>
                     <div class="form-group">
                         <label>Poste</label>
                        <input type="text" name="poste" title="Le poste ne doit contenir que des lettres" class="form-control" required />						
                     </div>
                     <div class="form-group">
                         <label>Departement</label>
                        <input type="number" name="departement" title="Le département ne doit contenir que des chiffres" class="form-control" required />						
                     </div>
                     <div class="form-group">
                         <label>Salaire</label>
                        <input type="number" name="salaire" title="Le salaire ne doit contenir que des chiffres" class="form-control" required />						
                     </div>
                     </div> 
                     <div class="modal-footer">
                         <input type="reset" class="btn btn-secondary" data-dismiss="modal" value="Annuler">
			 <input type="submit" class="btn btn-success" value="Ajouter">
                       
                     </div>
                </form>  
            </div>            
            </div>            
            <div>
                ${model.erreurs}
            </div>
    </body>
</html>

