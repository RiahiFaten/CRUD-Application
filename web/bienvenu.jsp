<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Gestion Des Employés</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
    </head>
    <body>
    <center>
     <div class="container">
        <table>
            <tr>
                <td>
                  <form action="controlleur.php?action=consulter" method="post">
                    <input type="submit" class="btn btn-primary btn-lg" value="Consulter la liste des Employés"  /> 
                </form>   
                </td>
                <td>
                    <form action="controlleur.php?action=pourajouter" method="post">
                    <input type="submit" class="btn btn-primary btn-lg" value="Ajouter un Employé"  />
                </form>  
                </td>
                <td>
                    <a href="http://localhost:8084/GE/" class="btn btn-secondary">Se déconnecter</a>
                </td>
            </tr>
        </table>
     </div>
</center>
            <div>
                ${model.erreurs}
            </div>
                            
    </body>
</html>

