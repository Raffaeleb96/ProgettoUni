<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

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

<!-- bootstrap -->
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
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">

<title>Healthy4You</title>
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
					
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
			
			<nav class="navbar navbar-light ">
 			 <a class="navbar-brand zoom" href="index.jsp">
  			  <img src="imgs/mask.svg" width="50px" height="50px" alt="logo" >
 			 </a>
		</nav>	
			
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle navbar-brand active zoom" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <b>Prodotti</b> </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item zoom" href="#">Mascherine</a></li>
							<li><a class="dropdown-item zoom" href="#">Igienizzanti</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link navbar-brand active zoom" href="#">Guida
							all`acquisto</a></li>
					<li class="nav-item"><a class="nav-link navbar-brand active zoom" href="#">Chi
							siamo</a></li>
							
							<li class="nav-item"><a class="nav-link navbar-brand active zoom" href="#">+39 3338472395</a></li>
				</ul>
				
				
				
				
				<ul class="navbar-nav flex-row flex-wrap ms-md-auto">
					<li class="nav-item col-6 col-md-auto"><a class="nav-link p-2 zoom" 
						href="login.jsp" target="_blank" rel="noopener">
								  Il tuo account &nbsp
						<i class="bi bi-person-square"style="font-size: 2rem;"
							onclick="myFunction()"></i>
							
					</a></li>
					<li class="nav-item col-6 col-md-auto"><a class="nav-link p-2 zoom"
						href="https://twitter.com/getbootstrap" target="_blank"
						rel="noopener"> Carrello <i class="bi bi-bag"
							style="font-size: 2rem;" onclick="myFunxction()"></i>
					</a></li>
				</ul>
				
			</div>
		</div>
	</nav>
</body>
</html>