<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Gestion des utilisateurs</title>
	<link rel="stylesheet" href="<c:url value="/inc/css/bootstrap.min.css" />" />
  	<link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css" />" />
</head>
<body>
	<div class="container" >
	    <div class="row">
	    	<div class="col-md-4 col-md-offset-4">
	    		<div class="panel panel-default">
				  	<div class="panel-heading">
				    	<h3 class="panel-title">Modifiez l'utilisateur : <span class="${empty form.erreurs ? 'text-success' : 'text-danger'} text-center">${form.resultat}</span></h3>
				 	</div>
		      					 
				  	<div class="panel-body text-primary">
				    	<form action="<c:url value="/modificationUtilisateur" />" method="post" >
	                    <fieldset>
				    	  	<div class="form-group">
				    	  		<input name="login" type="text" value="${utilisateur.mailUtilisateur }" id="login" hidden="hidden" /> <span class="text-danger">*</span> <span class="text-danger">${form.erreurs.login }</span>
					    		<span>	
					    			<label for="motdepasse">Mot de passe: <span class="text-danger">*</span> <span class="text-danger">${form.erreurs.motDePasse }</span></label>
					    			<input class="form-control" placeholder="" id="motdepasse" name="motdepasse" type="password" value="">				    			
				    			</span>
					    		<span>
					    			<label for="confirmation">Confirmation du mot de passe: <span class="text-danger">*</span></label>
					    			<input class="form-control" placeholder="" id="confirmation" name="confirmation" type="password" value="">
					    		</span>
					    		<span>
					    			<label for="prenom">Prénom: <span class="text-danger">*</span> <span class="text-danger">${form.erreurs.prenom }</span></label>
					    			<input class="form-control" placeholder="" id="prenom" name="prenom" type="text" value="<c:out value="${utilisateur.prenom }" /> ">				    			
					    		</span>
					    		<span>
					    			<label for="nom">Nom: <span class="text-danger">*</span> <span class="text-danger">${form.erreurs.nom }</span></label>
					    			<input class="form-control" placeholder="" id="nom" name="nom" type="text" value="<c:out value="${utilisateur.nom }" /> ">				    			
					    		</span>
					    		<span>
					    			<label for="telephone">Téléphone: <span class="text-danger">*</span> <span class="text-danger">${form.erreurs.telephone }</span></label>
					    			<input class="form-control" placeholder="" id="telephone" name="telephone" type="text" value="<c:out value="${utilisateur.telUtilisateur }" /> ">				    			
					    		</span>
					    		<span>
					    			<label for="adresse">Adresse: <span class="text-danger">*</span> <span class="text-danger">${form.erreurs.adresse }</span></label>
					    			<input class="form-control" placeholder="" id="adresse" name="adresse" type="text" value="<c:out value="${utilisateur.adresseUtilisateur }" /> ">
					    		</span>
					    		<span>
					    			<label for="nationalite">Nationalité: <span class="text-danger">*</span> <span class="text-danger">${form.erreurs.nationalite }</span></label>
					    			<select class="form-control" id="nationalite" name="nationalite" >
					    				<option></option>
					    				<option value="Afrique du Sud" ${utilisateur.nationaliteUtilisateur=='Afrique du Sud'? 'selected':''}>Afrique du Sud</option> 
					    				<option value="Algérie" ${utilisateur.nationaliteUtilisateur=='Algérie'? 'selected':''}>Algérie</option>
					    				<option value="Angola" ${utilisateur.nationaliteUtilisateur=='Angola'? 'selected':''}>Angola</option>
					    				<option value="Bénin" ${utilisateur.nationaliteUtilisateur=='Bénin'? 'selected':''}>Bénin</option>
					    				<option value="Botswana" ${utilisateur.nationaliteUtilisateur=='Botswana'? 'selected':''}>Botswana</option>
					    				<option value="Burkina Faso" ${utilisateur.nationaliteUtilisateur=='Burkina Faso'? 'selected':''}>Burkina Faso</option>
					    				<option value="Burundi" ${utilisateur.nationaliteUtilisateur=='Burundi'? 'selected':''}>Burundi</option>
					    				<option value="Cameroun" ${utilisateur.nationaliteUtilisateur=='Cameroun'? 'selected':''}>Cameroun</option>
					    				<option value="Cap-Vert" ${utilisateur.nationaliteUtilisateur=='Cap-Vert'? 'selected':''}>Cap-Vert</option>
					    				<option value="République centrafricaine" ${utilisateur.nationaliteUtilisateur=='République centrafricaine'? 'selected':''}>République centrafricaine</option>
					    				<option value="Comores" ${utilisateur.nationaliteUtilisateur=='Comores'? 'selected':''}>Comores</option>
					    				<option value="République du Congo" ${utilisateur.nationaliteUtilisateur=='République du Congo'? 'selected':''}>République du Congo</option>
					    				<option value="République démocratique du Congo" ${utilisateur.nationaliteUtilisateur=='République démocratique du Congo'? 'selected':''}>République démocratique du Congo</option>
					    				<option value="Côte d'Ivoire" ${utilisateur.nationaliteUtilisateur=="Côte d'Ivoire"? 'selected':''}>Côte d'Ivoire</option>
					    				<option value="Djibouti" ${utilisateur.nationaliteUtilisateur=='Djibouti'? 'selected':''}>Djibouti</option>
					    				<option value="Egypte" ${utilisateur.nationaliteUtilisateur=='Egypte'? 'selected':''}>Egypte</option>
					    				<option value="Erythrée" ${utilisateur.nationaliteUtilisateur=='Erythrée'? 'selected':''}>Erythrée</option>
					    				<option value="Ethiopie" ${utilisateur.nationaliteUtilisateur=='Ethiopie'? 'selected':''}>Ethiopie</option>
					    				<option value="Gabon" ${utilisateur.nationaliteUtilisateur=='Gabon'? 'selected':''}>Gabon</option>
					    				<option value="Gambie" ${utilisateur.nationaliteUtilisateur=='Gambie'? 'selected':''}>Gambie</option>
					    				<option value="Ghana" ${utilisateur.nationaliteUtilisateur=='Ghana'? 'selected':''}>Ghana</option>
					    				<option value="Guinée" ${utilisateur.nationaliteUtilisateur=='Guinée'? 'selected':''}>Guinée</option>
					    				<option value="Guinée-Bissau" ${utilisateur.nationaliteUtilisateur=='Guinée-Bissau'? 'selected':''}>Guinée-Bissau</option>
					    				<option value="Guinée équatoriale" ${utilisateur.nationaliteUtilisateur=='Guinée équatoriale'? 'selected':''}>Guinée équatoriale</option>
					    				<option value="Kenya" ${utilisateur.nationaliteUtilisateur=='Kenya'? 'selected':''}>Kenya</option>
					    				<option value="Lesotho" ${utilisateur.nationaliteUtilisateur=='Lesotho'? 'selected':''}>Lesotho</option>
					    				<option value="Liberia" ${utilisateur.nationaliteUtilisateur=='Liberia'? 'selected':''}>Liberia</option>
					    				<option value="Libye" ${utilisateur.nationaliteUtilisateur=='Libye'? 'selected':''}>Libye</option>
					    				<option value="Madagascar" ${utilisateur.nationaliteUtilisateur=='Madagascar'? 'selected':''}>Madagascar</option>
					    				<option value="Malawi" ${utilisateur.nationaliteUtilisateur=='Malawi'? 'selected':''}>Malawi</option>
					    				<option value="Mali" ${utilisateur.nationaliteUtilisateur=='Mali'? 'selected':''}>Mali</option>
					    				<option value="Maroc" ${utilisateur.nationaliteUtilisateur=='Maroc'? 'selected':''}>Maroc</option>
					    				<option value="Maurice" ${utilisateur.nationaliteUtilisateur=='Maurice'? 'selected':''}>Maurice</option>
					    				<option value="Mauritanie" ${utilisateur.nationaliteUtilisateur=='Mauritanie'? 'selected':''}>Mauritanie</option>
					    				<option value="Mozambique" ${utilisateur.nationaliteUtilisateur=='Mozambique'? 'selected':''}>Mozambique</option>
					    				<option value="Namibie" ${utilisateur.nationaliteUtilisateur=='Namibie'? 'selected':''}>Namibie</option>
					    				<option value="Niger" ${utilisateur.nationaliteUtilisateur=='Niger'? 'selected':''}>Niger</option>
					    				<option value="Nigeria" ${utilisateur.nationaliteUtilisateur=='Nigeria'? 'selected':''}>Nigeria</option>
					    				<option value="Ouganda" ${utilisateur.nationaliteUtilisateur=='Ouganda'? 'selected':''}>Ouganda</option>
					    				<option value="Rwanda" ${utilisateur.nationaliteUtilisateur=='Rwanda'? 'selected':''}>Rwanda</option>
					    				<option value="Sao Tomé-et-Principe" ${utilisateur.nationaliteUtilisateur=='Sao Tomé-et-Principe'? 'selected':''}>Sao Tomé-et-Principe</option>
					    				<option value="Sénégal" ${utilisateur.nationaliteUtilisateur=='Sénégal'? 'selected':''}>Sénégal</option>
					    				<option value="Seychelles" ${utilisateur.nationaliteUtilisateur=='Seychelles'? 'selected':''}>Seychelles</option>
					    				<option value="Siera Leone" ${utilisateur.nationaliteUtilisateur=='Siera Leone'? 'selected':''}>Siera Leone</option>
					    				<option value="Somalie" ${utilisateur.nationaliteUtilisateur=='Somalie'? 'selected':''}>Somalie</option>
					    				<option value="Soudan" ${utilisateur.nationaliteUtilisateur=='Soudan'? 'selected':''}>Soudan</option>
					    				<option value="Soudan du Sud" ${utilisateur.nationaliteUtilisateur=='Soudan du Sud'? 'selected':''}>Soudan du Sud</option>
					    				<option value="Eswatini" ${utilisateur.nationaliteUtilisateur=='Eswatini'? 'selected':''}>Eswatini</option>
					    				<option value="Tanzanie" ${utilisateur.nationaliteUtilisateur=='Tanzanie'? 'selected':''}>Tanzanie</option>
					    				<option value="Tchad" ${utilisateur.nationaliteUtilisateur=='Tchad'? 'selected':''}>Tchad</option>
					    				<option value="Togo" ${utilisateur.nationaliteUtilisateur=='Togo'? 'selected':''}>Togo</option>
					    				<option value="Tunisie" ${utilisateur.nationaliteUtilisateur=='Tunisie'? 'selected':''}>Tunisie</option>
					    				<option value="Zambie" ${utilisateur.nationaliteUtilisateur=='Zambie'? 'selected':''}>Zambie</option>
					    				<option value="Zimbabwe" ${utilisateur.nationaliteUtilisateur=='Zimbabwe'? 'selected':''}>Zimbabwe</option>
					    			</select>
					    		</span>
					    	</div>
				    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Modifier">
				    	</fieldset>
				      	</form>
				      	<br/>
			     		<a class='btn btn-info btn-xs' href="<c:url value="/"> </c:url>"><span class="glyphicon glyphicon-back"></span> Retour</a>
	                   </div>
				</div>
			</div>
		</div>
	</div>
	
	<script src="<c:url value="/inc/jquery.min.js" /> "></script>
    <script src="<c:url value="/inc/bootstrap.min.js" /> "></script>
    <script src="<c:url value="/inc/theme.js" /> " ></script>
	<script> 
		$(document).ready(function(){
 			$('select[name="contactAnterieur"]').change(function(){
  				$('textarea[name="descriptionContact"]').prop('disabled',this.value != 0 ?false:true);
 			});
		});
	</script>
</body>
</html>