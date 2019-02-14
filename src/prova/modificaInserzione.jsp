<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> <LINK REL="SHORTCUT ICON" href="favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aste On Line - Modifica Inserzione</title>
<meta name="" content="">

<link href="css/style.css" type="text/css" rel="stylesheet">

<!-- Script e css per il calendario -->
<link href="css/tcal.css" type="text/css" rel="stylesheet">
<script src="js/tcal.js" type="text/javascript"> </script>


</head>


<body>


<div class="container">

<!-- Intestazione (logo e login)-->
	<div class="header"> 
		
		<div id="logo"> 
			<a id="logo" href="index"></a>
		</div>
		
		<div style="float:left; width:700px; padding: 10px 0px 0px 0px;"> 
			     
                     <div class="menuUtente">  				
						
						<div style="float:right;  padding: 0px 0px 0px 0px; font-family: Trebuchet MS, Arial, Helvetica, sans-serif;">				 
							Benvenuto ${utente.nick} |
						</div> 
						<div style="clear: both;"></div>
						<div style="float:right;  padding: 7px 0px 0px 0px;">  
						  <c:choose>
						  <c:when test="${utente.tipologiaCliente eq 'venditore' }">
						 	 <a href="ServletDettagliUtente"><strong>I Miei Dati |</strong></a>
						 	 <a href="ServletLeMieInserzioni"><strong>Le Mie Inserzioni |</strong></a>
						 	 <a href="ServletInserzioniOsservate"><strong>Inserzioni Osservate |</strong></a>
						 	 <a href="ServletLeMieAste"><strong>Le Mie Aste |</strong></a>
						 	 <a href="ServletIMieiAcquisti"><strong>I Miei Acquisti |</strong></a>
						  </c:when>
						  <c:when test="${utente.tipologiaCliente eq 'acquirente' }">
							<a href="ServletDettagliUtente"><strong>I Miei Dati |</strong></a>
							<a href="ServletInserzioniOsservate"><strong>Inserzioni Osservate |</strong></a>
							<a href="ServletLeMieAste"><strong>Le Mie Aste |</strong></a>
							<a href="ServletIMieiAcquisti"><strong>I Miei Acquisti |</strong></a>
						  </c:when>
						  <c:when test="${utente.tipologiaCliente eq 'admin' }">
							  <a href="amministrazione.jsp"><strong>Home |</strong></a>
							  <a href="ServletUtenti"><strong>Utenti |</strong></a>
							  <a href="ServletProdotti"><strong>Prodotti |</strong></a>
						  </c:when>
						  </c:choose>
						 	 <a href="ServletLogout"><strong>Logout |</strong></a>
						</div>
			
				 	</div>
			
						
		</div>
		
	</div>
    	
    	
	<!-- contenitore esterno-->

	<div class="centralBox"> 
		
		<!-- colonna di sinistra -->
		<div style="float:left; background-color:#ffffff; width:850px; height:100%px;">
		
		
			<!-- Barra menu -->
			<div class="siteMenu">
				

				<nav>
				    <ul>
				       
				        <li><a href="index">Home</a></li>				        
				        <li><a href="ServletAsteInCorso">Aste in corso</a></li>
    			        <li><a href="ServletAsteInChiusura">Aste in chiusura</a></li>
    			        <li><a href="pagamenti.jsp">Pagamenti</a></li>
    			        <li><a href="contatti.jsp">Contatti</a></li>
				       
				    </ul>
				</nav>
				
				
			</div>
<!-- 		<div style="clear:both;"></div> -->
			
			<div class="centralBoxOperations">
			
				<p>&nbsp;</p>
  				<p align="center"><font size="4">${ messaggio }</font></p>
 
  					
  				<div class="centralBoxText">
				 
<!-- 				 <p>Date: <input type="text" id="datepicker" /></p> -->
				 

				  	<h3>&nbsp;</h3>
   					 <h3 align="center">Inserisci i dati relativi all'inserzione</h3>
    				<p>&nbsp;</p>
    				
    				<form action="ServletModificaInserzione?idInserzioneDaModificare=${inserzione.idInserzione}" method="post" enctype="multipart/form-data">

<!-- 						L'input nascosto mi serve per inviare alla servlet l'id dell'inserzione, perchè l'ho messo in request, quindi è necessario inviarlo alla servlet tramite form -->
<%--     				    <input name="idInserzioneDaModificare" type="hidden" value="${ inserzione.idInserzione }" id="campoTesto4"/> --%>
					 

    					<p>Titolo</p>
    					<p>
    						<input name="titolo" type="text" maxlength="30" id="campoTesto" value="${ inserzione.titolo }" /> 
    					</p>
    					<p>Descrizione</p>
    					<p>
    						<textarea name="descrizione" rows="5" cols="40" value="${ inserzione.descrizione }"></textarea>
    					</p>
    					<p>Prezzo Iniziale</p>
    					<p>
    						<input name="prezzoIniziale" type="text" maxlength="7" id="campoTesto" value="${ inserzione.prezzoIniziale }" />
    					</p>
    					
    					<p>Data scadenza*</p>
    					<p>
    						<input class="tcal tcalInput tcalActive" type="text" value="" name="data_scadenza" value="${ inserzione.dataScadenzaString }" >
    					</p>
  
    					<p>Immagine*</p>
						<p>
							<input type="file" name="fileUpload" maxlength="200" id="campoTesto" />
						</p>    				
    					<p>Immagine</p>
						<p>
							<input type="file" name="fileUpload" maxlength="200" id="campoTesto" />
						</p>   
						<p>Immagine</p>
						<p>
							<input type="file" name="fileUpload" maxlength="200" id="campoTesto" />
						</p>  
						<p>&nbsp;</p> 
    					<p align="center">	
					    	<input type="submit" value="Inserisci" id="bottone"/>&nbsp;&nbsp;&nbsp;
					   	 	<input name="Ripristina" type="reset" id="bottone" value="Cancella"/>
					  	</p>
					 
    				</form>
    				
    				<p>&nbsp;</p>
					  <h5 align="right">*campi obbligatori &nbsp;</h5>	
					  	
				</div>	
  				
			</div>
					
		</div>
		
		<!-- colonna di destra (pubblicità) -->
		<div class="big-img" style="float:left; width:150px; height:100%; background-color:#ffffff">
		
			<p align="center" >
				<img alt="pubblicità" src="immagini/bannerAsteOnLine.jpg">
			</p>
		
		</div>
		<div style="clear:both;"></div>
		
	</div>
	<div style="clear:both;"></div>
	
	<!-- footer -->	
	
	<div class="footer">
	 
© 2018 - AsteOnLine edit by <a style="color:#0000FF;" href="https://www.facebook.com/ros.em.goo" target="_new">Rosario Emanuel Goglia</a> and <a style="color:#0000FF;" href="https://www.facebook.com/marco.belfiore.54?fref=ts" target="_new">Marco Belfiore</a>
	 
	</div>


</div>

</body>
</html>