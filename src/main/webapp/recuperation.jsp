<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recuperation fiche</title>
     <script>
        function effacerFormulaire() {
            document.getElementById("nom").value = "";
            document.getElementById("prenom").value = "";
            document.getElementById("age").value = "";
            document.getElementById("adresse").value = "";
            document.getElementById("sexe").value = "";
            document.getElementById("niveau_etude").value = "";
        }
    </script>
</head>
<body>
    <h1>Recuperation fiche</h1>
    
    
    <% String nom = request.getParameter("nom"); %>
    <% String prenom = request.getParameter("prenom"); %>
    <% String anneeNaissanceStr = request.getParameter("annee_naissance"); %>
    <% int anneeNaissance = Integer.parseInt(anneeNaissanceStr); %>
    <% String adresse = request.getParameter("adresse"); %>
    <% String sexe = request.getParameter("sexe"); %>
    <% String niveauEtude = request.getParameter("niveau_etude"); %>
    

    <% int age = java.time.Year.now().getValue() - anneeNaissance; %>
    
  
    <form action="fiche.html" method="get">
        <label for="nom">Nom:</label>
        <input type="text" id="nom" name="nom" value="<%= nom %>" readonly><br><br>
        
        <label for="prenom">Prénom:</label>
        <input type="text" id="prenom" name="prenom" value="<%= prenom %>" readonly><br><br>
        
        <label for="age">Age:</label>
        <input type="text" id="age" name="age" value="<%= age %>" readonly><br><br>
        
        <label for="adresse">Adresse:</label>
        <input type="text" id="adresse" name="adresse" value="<%= adresse %>" readonly><br><br>
        
        <label for="sexe">Sexe:</label>
        <input type="text" id="sexe" name="sexe" value="<%= sexe %>" readonly><br><br>
        
        
        
        <label for="niveau_etude">Niveau d'étude:</label>
        <input type="text" id="niveau_etude" name="niveau_etude" value="<%= niveauEtude %>" readonly><br><br>
        
        <button type="submit">Retour fiche</button>
        <button type="button" onclick="effacerFormulaire()">Effacer</button>
    
       
    </form>
</body>
</html>
