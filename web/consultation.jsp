<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/bienvenu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Les Employés - GE</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();});
        </script>
        <script type="text/javascript">
           function confirmer(url){
               var rep=confirm("Etes-vous sûr de vouloir supprimer?");
               if(rep===true){
                   document.location=url;}}
        </script>
    </head>
    <body>
    <center>
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                             <div>
				<h2><b>Liste des Employés</b></h2>
                            </div>
                        </div>
                    </div>                   
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>		
                              <th>ID</th><th>Nom</th><th>Prénom</th><th>Date de naissance</th><th>Adresse</th><th>Téléphone</th><th>Date d'embauche</th><th>Poste</th><th>Département</th><th>Salaire</th>
                            </tr>
                        </thead>
                        <tbody>
                       <c:forEach items="${model.employes}" var="e">
                        <tr>
                            <td>${e.id}</td>
                            <td>${e.nom}</td>
                            <td>${e.prenom}</td>
                            <td>${e.daten}</td>
                            <td>${e.adresse}</td>
                            <td>${e.numtel}</td>
                            <td>${e.dateemb}</td>
                            <td>${e.poste}</td>
                            <td>${e.dep}</td>
                            <td>${e.sal}</td>  
                            <td><a href="controlleur.php?action=pourmodifier&mode=modifier&id=${e.id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Editer">&#xE254;</i></a></td>
                            <td><a href="javascript:confirmer('controlleur.php?action=supprimer&id=${e.id}')" class="delete" ><i class="material-icons" data-toggle="tooltip" title="Supprimer">&#xE872;</i></a></td>
                        </tr>
                    </c:forEach>
                     </tbody>
                </table>
            </div>
         </div>

        <div>
                ${model.erreurs}
        </div>
    </center>
    </body>
</html>