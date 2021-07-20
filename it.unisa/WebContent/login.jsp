	<jsp:include page="header.jsp"></jsp:include>



	<div class="center">
		<div class="container whitecolor" id="loginheight">
  	  		<div id="formContent">
			  	    <!-- Tabs Titles -->
			
			  	    <!-- Icon -->
			  	    <div>
			  	      <h1 class="margin">Benvenuto</h1>
			  	    </div>
			  	    
			  	    <div>
			  	      <h5>Accedi</h5>
			  	    </div>
			  	    
			  	    	<%-- <% if(utente.getEmail().isEmpty())  %>
			  	      			
			  	      		
			  	      		<p> Dati non corretti </p>
			  	      		
			  	      		 --%>
			  	      		
			
			  	    <!-- Login Form -->
			  	    <form action="login" method="POST">
			  	    
			  	    <div>
			  	      <input type="email" id="email" class="margin inputwidth" name="email" placeholder="mapi@gmail.com" required="required">
			  	     </div>
			  	      <input type="password" id="password" class="margin inputwidth" name="password" placeholder="1234" required="required">
			   </div>
			  	      
			  	      
					      <div>
			  	      	
			  	      </div>
			  	      <input type="submit" class="margin inputwidth" value="Accedi">
			  	      
			  	      
  	      
  	      
  	    				  <div>
  	    				  <h4>Non hai un account? <span><a href="registrazione.jsp"> Registrati </a></span></h4>
  	    				  <h4><a class="underlineHover" href="#">Password dimenticata?</a></h4>
  	    				  </div>
  	   		   
  	 				   </form>
  	    
  	    
  	    
		
		  	  </div>
		  </div>
		  
  
  
<jsp:include page="footer.jsp" />