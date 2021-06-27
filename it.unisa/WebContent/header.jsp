<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Healthy4u</title>
	
	<%@page import="it.unisa.model.*"%>	
	<jsp:useBean id="user" class="it.unisa.model.Utente" scope="session"></jsp:useBean>
	
	<jsp:useBean id="cart" class="java.util.ArrayList" scope="session"></jsp:useBean>
	

	<!-- js  -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	function myFunction() {
		alert("We BUCCHI!");
	}
</script>



	<!-- griglia bootstrap -->
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
		crossorigin="anonymous">
	
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
	
	
	
		
		
	<!-- font awesome -->
		 <!-- carico librerie font awesome per le icone -->
	<script src="https://kit.fontawesome.com/a23ba42ea3.js" crossorigin="anonymous"></script>
		
		
	<!-- css personalizzato -->
	
	
		<!-- E' IMPORTANTE CHE SIA L'ULTIMO IL NOSTRO CSS
		L'ULTIMO BATTE TUTTI I PRECEDENTI -->
	<link href="css/style.css" rel="stylesheet" type="text/css">
		
	
	</head>
	<body>
	


	<!-- NAVBAR  -->
	
	
	
	<nav
		class="navbar navbar-inverse bg-inverse navbar-light navbar-expand-lg sticky-top navbar-bgcolor">
		<div class="container-fluid">
		
		
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
					
			<div class="collapse navbar-collapse" id="navbarNavaDropdown">
			
			<nav class="navbar navbar-light ">
 			 <a class="navbar-brand zoom nav-link p-2" href="index.jsp">
  			  <img src="imgs/mask.svg" width="50px" height="50px" alt="logo" >
  			  
  			  <p> Healthy4u </p>
 			 </a>
		</nav>	
			
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle navbar-brand active zoom" href="prodotto"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <b>Prodotti</b> </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item zoom" href="prodotti">Tutti i prodotti</a></li>
							<li><a class="dropdown-item zoom" href="mascherine">Mascherine</a></li>
							<li><a class="dropdown-item zoom" href="disinfettanti">Disinfettanti</a></li>
						</ul>
					</li>
		
					
					<li class="nav-item"><a class="nav-link navbar-brand active zoom" href="assistenza.jsp">Assistenza</a></li>	
							
							<li class="nav-item">
							 <div class="nav-link navbar-brand active zoom inputwidth">
							      <input type="search" placeholder="Cerca qui"/>
							      <span class="icon"><i class="fa fa-search"></i></span>
							  </div>
							
							</li>	
							
							
				</ul>
				
				
				
				
				<ul class="navbar-nav flex-row flex-wrap ms-md-auto">
				
				
				
				<% if(user.getNome()!=null) {%>
				
				<i class="bi bi-person-square" style="font-size: 3rem;"></i>
				<li class="nav-item col-md-4 col-md-auto">
					
				<p class="nav-link p-2 zoom">
				 <b>Ciao, <%= user.getNome() %>! <br>
				 <p>
				 <a href="areapersonale.jsp">Il tuo Account</a>
				 <a href="logout">Esci</a></b>
				 </p>
				
				 

				</li>
				
				
				<% }%>
				
				
				<% if(user.getNome()==null) {%>
				
					<i class="bi bi-person-square" style="font-size: 3rem;"></i>
					<li class="nav-item col-md-4 col-md-auto">
					<p class="nav-link p-2 zoom">
							 <b>Account<br>
						 	<span><a href="login.jsp">Accedi</a></span> 
							<span><a href="registrazione.jsp">Registrati</a></b></span> 
					
					</li>
					
					<% }%>
					
					 <i class="bi bi-bag" style="font-size: 3rem;"></i>
					<li class="nav-item col-md-4 col-md-auto">
					<a class="nav-link p-2 zoom" href="cart">
						 <b>	Il tuo <br>carrello <% out.print(cart.size());  %></b> 
					</a>
					</li>
				</ul>
				
				</div>
			</div>
		</nav>
		
	