

<jsp:include page="header.jsp" />

<%@page import="it.unisa.model.*"%>
<jsp:useBean id="utente" class="it.unisa.model.Utente" scope="request"></jsp:useBean>

	<div class="center">
		<div class="container whitecolor" id="#loginheight">
  	  		
			  	    <!-- Tabs Titles -->
			
			  	    <!-- Icon -->
			  	    <div>
			  	      <h1 class="margin">Benvenuto su Healthy4u!</h1>
			  	    </div>
			  	    
			  	    <div>
			  	      <h4>Registrazione</h4>
			  	    </div>
			  	    
			  	    	<%-- <% if(utente.getEmail().isEmpty())  %>
			  	      			
			  	      		
			  	      		<p> Dati non corretti </p>
			  	      		
			  	      		 --%>
			  	      		
			
			  	    <!-- Login Form -->
			  	    <form action="registrazione" method="POST">
			  	    
			  	    <div>
			  	    <input type="text" id="nome" class="margin inputwidth" name="nome" placeholder="Inserisci il tuo nome" required="required">
			  	    </div>
			  	    
					<div>		  	    
			  	    <input type="text" id="cognome" class="margin inputwidth" name="cognome" placeholder="Inserisci il tuo cognome" required="required">
			  	    </div>
			  	    
			  	    <div>
			  	      <input type="email" id="email" class="margin inputwidth" name="email" placeholder="Inserisci la tua e-Mail" required="required">
			  	     </div>
			  	     
			  	     <div>
			  	      <input type="password" id="password" class="margin inputwidth" name="password" placeholder="Inserisci la tua password" required="required">
			   		 </div>
			   
			  	      
			  	      <input type="checkbox" id="condizioni" name="condizioni" value="condizioni" >
							<label for="condizioni"> Accetti le condizioni di vendita</label><br>
							
					  <input type="checkbox" id="newsletter" name="newsletter" value="newsletter">
							<label for="newsletter"> Iscrizione alla newsletter per le novità</label><br>
					     
			  	      <input type="submit" class="margin inputwidth" value="Registrati">
			  	      
			  	      
 
  	   		   
  	 				   </form>
  	    
  	    
  	    
		
		  	  </div>
		  </div>
		  
  
  
<jsp:include page="footer.jsp" />