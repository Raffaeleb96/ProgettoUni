

<!-- FILE COPIATI DA PRODUCTVIEW.JSP DELLA PROF - LISTA ELEMENTI DB -->
<jsp:include page="header.jsp" />

<!-- MODIFICHE EFFETTUATE PER AGGIUNGERE STORAGE AL NOSTRO PROGETTO:
		COPIATO TUTTE LE SERVLET
		CAMBIATO IL REDIRECT IN PRODUCTCONTROL.JAVA (INDEX.JSP)
		CAMBIATO I DATI NEL FILE WEB.XML (DEVI METTERE LA TUA PASSWORD PER ACCEDERE AL DB
		CANCELLA PRODUCTMODELDS
		NOI USIAMO IL DRIVER MANAGER (DM)  -->
		
		<!--  QUESTA LISTA PRENDE TUTTI GLI ELEMENTI DELLA TABELLA PRODUCT DEL DATABASE E LI SALVA 
		ADESSO BISOGNA AGGIUNGERE LE STAMPE SU OGNI SLIDER DEI PRODOTTI
		OVVIAMENTE AVREMO ALTRE PAGINE PER I PRODOTTI, MA PER IL MOMENTO
		LA FACCIAMO FUNZIONARE SULLA HOME PER VEDERE SE CARICA I PRODOTTI
		E NEL FRATTEMPO INCOMINCIAMO ANCHE A POPOLARE IL DATABASE -->
		
<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");
	if(products == null) {
		response.sendRedirect("./product");	
		return;
	}
	ProductBean product = (ProductBean) request.getAttribute("product");
%>


<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.ProductBean"%>



<body class="body">

	<!--ciao 1 -->

	<div class="center" style= "background-color: #e0ffff">
	<p class="center"> <h5><b>Il sito N°1 in Italia per l'acquisto di mascherine!</b></h5> </p>
	</div>	

	<!-- CAROUSEL - SLIDESHOW -->
	<div id="demo" class="carousel slide carousel-fade"
		data-ride="carousel" style="size: 150%">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="imgs/123.jpg" alt="Los Angeles" width="1100"
					height="500">
				<div class="carousel-caption">
					<h3><strong>Razer Hazel</strong></h3>
				</div>
			</div>
			<div class="carousel-item">
				<img src="imgs/456.jpg" alt="Chicago" width="1100" height="500">
				<div class="carousel-caption">
					<h3><strong>Razer Hazel</strong></h3>
				</div>
			</div>
			<div class="carousel-item">
				<img src="imgs/razer-project-hazel-gallery-01.jpg" alt="New York"
					width="1100" height="500">
				<div class="carousel-caption">
					<h3><strong>Razer Hazel</strong></h3>
				</div>
			</div>
		</div>
		
	</div>


	<!-- PRODOTTI IN EVIDENZA -->
	<div class="container-fluid">
		<br>
		<div class="textshow">
			<h1>
				Più <b>acquistati</b>
			</h1>
		</div>
	</div>

	<!-- CAROUSEL ITEMS  -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div id="myCarousel" class="carousel slide" data-ride="carousel"
					data-interval="0">
					<!-- Carousel indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
					</ol>
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Apple iPad</h4>
											<p class="item-price">
												<del>$400.00</del> <span>$369.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Sony Headphone</h4>
											<p class="item-price">
												<del>$25.00</del> <span>$23.99</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Macbook Air</h4>
											<p class="item-price">
												<del>$899.00</del> <span>$649.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i
														class="fa fa-star-half-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Nikon DSLR</h4>
											<p class="item-price">
												<del>$315.00</del> <span>$250.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Sony Play Station</h4>
											<p class="item-price">
												<del>$289.00</del> <span>$269.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Macbook Pro</h4>
											<p class="item-price">
												<del>$1099.00</del> <span>$869.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i
														class="fa fa-star-half-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Bose Speaker</h4>
											<p class="item-price">
												<del>$109.00</del> <span>$99.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Samsung Galaxy S8</h4>
											<p class="item-price">
												<del>$599.00</del> <span>$569.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="/examples/images/products/iphone.jpg"
												class="img-fluid" alt="">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span>
					</a>

					<!-- Carousel controls -->
					<a class="carousel-control-prev" href="#myCarousel"
						data-slide="prev"> <i
						class="fa fa-angle-left carousel-control-prev-icon"></i>
					</a> <a class="carousel-control-next" href="#myCarousel"
						data-slide="next"> <i
						class="fa fa-angle-right carousel-control-next-icon"></i>
					</a>
				</div>
			</div>
		</div>
	</div>






	<div class="container-fluid">
		<br>
		<div class="textshow">
			<h1>
				In <b>offerta</b>
			</h1>
		</div>


	</div>





	<!-- CAROUSEL ITEMS in offerta -->

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div id="myCarousel2" class="carousel slide" data-ride="carousel"
					data-interval="0">
					<!-- Carousel indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
					</ol>
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Apple iPad</h4>
											<p class="item-price">
												<del>$400.00</del>> <span>$369.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Sony Headphone</h4>
											<p class="item-price">
												<del>$25.00</del> <span>$23.99</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Macbook Air</h4>
											<p class="item-price">
												<del>$899.00</del> <span>$649.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i
														class="fa fa-star-half-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Nikon DSLR</h4>
											<p class="item-price">
												<del>$315.00</del> <span>$250.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Sony Play Station</h4>
											<p class="item-price">
												<del>$289.00</del> <span>$269.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Macbook Pro</h4>
											<p class="item-price">
												<del>$1099.00</del> <span>$869.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i
														class="fa fa-star-half-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Bose Speaker</h4>
											<p class="item-price">
												<del>$109.00</del> <span>$99.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="imgs/ffp3.jpg" class="img-fluid" alt="">
										</div>
										<div class="thumb-content">
											<h4>Samsung Galaxy S8</h4>
											<p class="item-price">
												<del>$599.00</del> <span>$569.00</span>
											</p>
											<div class="star-rating">
												<ul class="list-inline">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<a href="#" class="btn btn-primary">Aggiungi al carrello</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-sm-3">
									<div class="thumb-wrapper">
										<div class="img-box">
											<img src="/examples/images/products/iphone.jpg"
												class="img-fluid" alt="">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span>

					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span></a> <!-- Carousel controls -->
						<a class="carousel-control-prev" href="#myCarousel2"
						data-slide="prev"> <i
							class="fa fa-angle-left carousel-control-prev-icon"></i>
					</a> <a class="carousel-control-next" href="#myCarousel2"
						data-slide="next"> <i class="fa fa-angle-right carousel-control-next-icon"></i>
					</a>
					
				</div>
			</div>
		</div>
	</div>




	<!-- Immagini con testo -->

	<div class="container-fluid" style="background-color: #F8F8F8; padding-bottom: 20px;">
		<br>



		<div class="py-12" style="background-color: #F8F8F8">
			<div class="bounded-content">
				<div class="grid-container">
					<div class="row center">

						<div class="col-md-6 mb-4 mb-md-0 custompad">
							<h2 style="font-weight: 900">Healthy4You</h2>
							<div class="text-size-6 center">
								<p>Per più di Vistaprint ha aiutato le piccole imprese a
									creare marketing personalizzato dal design impeccabile. Il
									nostro sito web è pensato per aiutarti a trovare i prodotti di
									cui hai bisogno (biglietti da visita, articoli promozionali,
									ecc.) per creare lidentità visiva della tua attività.</p>
							</div>
						</div>
						<div class="col-md-6 mb-4 mb-md-0">

							<img class="imgcustom" src="imgs/prova.jpg">

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<jsp:include page="footer.jsp" />

	
