	<jsp:include page="header.jsp"></jsp:include>




	
	
	<body onload="StartTimers();" onmousemove="ResetTimers();">
	
	
<div id="timeout">
    <h1>Session About To Timeout</h1>
    <p>You will be automatically logged out in 1 minute.<br />
    To remain logged in move your mouse over this window.
</div>



	<!-- CAROUSEL -->
	
	<div id="carouselExampleCaptions customcarousel" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="imgs/banner1.png" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>First slide label</h5>
		        <p>Some representative placeholder content for the first slide.</p>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <img src="imgs/banner2.jpg" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Second slide label</h5>
		        <p>Some representative placeholder content for the second slide.</p>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <img src="imgs/banner3.jpg" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Third slide label</h5>
		        <p>Some representative placeholder content for the third slide.</p>
		      </div>
		    </div>
		  </div>
	</div>



<script>

//Set timeout variables.
var timoutNow = 5000; // Timeout in 15 mins.
var logoutUrl = 'login.jsp'; // URL to logout page.

var timeoutTimer;

// Start timers.
function StartTimers() {
   
    timeoutTimer = setTimeout("IdleTimeout()", timoutNow);
}

// Reset timers.
function ResetTimers() {
    clearTimeout(timeoutTimer);
    StartTimers();
    $("#timeout").dialog('close');
}

// Show idle timeout warning dialog.

// Logout the user.
function IdleTimeout() {
	  alert('Sessione scaduta, si prega di autenticarsi nuovamente.');
    window.location = logoutUrl;
}

</script>


	<div class="container">
	
		<div class="row">
			
			<div class="col-md">
			
			<a href="utente">utenti</a>
			
	
			</div>
		
		</div>
		
	</div>
	
	
	
	
	
	</body>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
