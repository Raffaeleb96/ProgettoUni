<jsp:include page="header.jsp"></jsp:include>

<%@page import="java.util.ArrayList"%>
<%@page import="it.unisa.model.Prodotto"%>

<%-- <jsp:useBean id="prodottoaggiunto" class="it.unisa.model.Prodotto" scope="request"></jsp:useBean> --%>
<jsp:useBean id="cart" class="java.util.ArrayList" scope="session"></jsp:useBean> 

<div class="center">
			
				<p>Prodotto aggiunto al carrello!</p> 
				
</div>



<div class="center">
	<h1> Il tuo Carrello </h1>
</div>





<div class="container" style="background-color:#f9f9f9; margin-top:10px; margin-bottom:10px;">

			
			
			
			<% for(Prodotto p : (ArrayList<Prodotto>)(Object) cart) { %>
			<div class="row" style="border: 2px solid black;">
			
					<div class="col-md-3 conten">
						<div class="vertical-center">
						
							<img style="padding:20px" class="imgsize" src="imgs/<%=p.getFoto()%>" alt="non disponibile" >
							
						</div>
					</div>
					
					<div class="col-md-3 conten">
						<div class="vertical-center">
						
							<p class="center"><%=p.getNome()%></p>
							
						</div>
					</div>
					
					<div class="col-md-3 conten">
						<div class="vertical-center">
						
							<p class="center"><%=p.getDescrizione()%></p>
							
						</div>
					</div>
					
					<div class="col-md-3 conten">
						<div class="vertical-center">
						
							<p class="center"><%=p.getPrezzo()%></p>
						
						</div>	
					</div>
					
					
			</div>
			
			 <% } %>
			
	<!-- TABELLA RESOCONTO CARRELLO -->
	<br>
	
				<div class="row" style="border: 2px solid black;">
			
					<div class="col-md-6 conten">
						<div class="vertical-center">
						
							<p> N° Articoli: <% out.print(cart.size()); %> </p>
							
						</div>
					</div>
					
					<div class="col-md-6 conten">
						<div class="vertical-center">
						
							<p> Totale:  </p>
							
						</div>
					</div>
					
					
				</div>			
			
	
	
	
	
			
</div>



<jsp:include page="footer.jsp"></jsp:include>