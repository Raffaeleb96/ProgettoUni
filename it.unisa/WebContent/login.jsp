

<jsp:include page="header.jsp" />

<%@page import="it.unisa.model.*"%>
<jsp:useBean id="utente" class="it.unisa.model.Utente" scope="request"></jsp:useBean>

	<div class="center">
		<div class="wrapper fadeInDown">
  	  		<div id="formContent">
			  	    <!-- Tabs Titles -->
			
			  	    <!-- Icon -->
			  	    <div>
			  	      <h1 class="my-5">Benvenuto</h1>
			  	    </div>
			  	    
			  	    <div>
			  	      <h4 class="my-5">Accedi</h4>
			  	    </div>
			  	    
			  	    	<%-- <% if(utente.getEmail().isEmpty())  %>
			  	      			
			  	      		
			  	      		<p> Dati non corretti </p>
			  	      		
			  	      		 --%>
			  	      		
			
			  	    <!-- Login Form -->
			  	    <form action="login" method="POST">
			  	    
			  	      <input type="email" id="email" class="fadeIn second zero-raduis" name="email" placeholder="E-Mail" required="required">
			  	      <input type="password" id="password" class="fadeIn third zero-raduis" name="password" placeholder="Password" required="required">
			  	      	
			  	      
			  	      
					      <div id="formFooter">
			  	      	<a class="underlineHover" href="#">Password dimenticata?</a>
			  	      </div>
			  	      <input type="submit" class="fadeIn fourth" value="login">
			  	      
			  	      
  	      
  	      
  	      <div><a href="register.jsp"><h2>Non hai un account?</h2></a></div>
  	      
  	    </form>
  	    
  	    
  	    
		
		  	  </div>
		  </div>
		  
  </div>
  
<jsp:include page="footer.jsp" />