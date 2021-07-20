<jsp:include page="header.jsp"></jsp:include>

<%@page import="java.util.ArrayList"%>

<%@page import="it.unisa.model.Prodotto"%>


<jsp:useBean id="cart" class="java.util.ArrayList" scope="session"></jsp:useBean> 
 

	
	<div class="center" style="margin-top:40px;">
		<h1> Il tuo carrello <span><% if (cart.size() == 0) { %> 
			 è vuoto <% } %> </span> </h1>
		
	</div>


<div class="container" style="background-color:#f9f9f9; margin-top:10px; margin-bottom:10px;">

			
			<div class="row" style="border: 1px solid black;">
				
				<div class="col-md-2">
					<p class="center">Foto</p>
				</div>
				
				<div class="col-md-2">
					<p class="center">Nome</p>
				</div>
				
				<div class="col-md-2">
					<p class="center">Descrizione</p>
				</div>
				
				<div class="col-md-2">
					<p class="center">Prezzo</p>
				</div>
				
				<div class="col-md-2">
					<p class="center">Quantità</p>
				</div>
				
				<div class="col-md-2">
					<p class="center">Azione</p>
				</div>
			</div>
			
			
			
			<% for(Prodotto p : (ArrayList<Prodotto>)(Object) cart) { %>
			
			
											
			<div class="row" style="border: 1px solid black;">
			
					<div class="col-md-2 conten">
						<div class="center">
						
							<img style="padding:10px" class="imgcart" src="imgs/<%=p.getFoto()%>" alt="non disponibile" >
							
						</div>
					</div>
					
					<div class="col-md-2 conten">
						<div class="center">
						
							<p><%=p.getNome()%></p>
							
						</div>
					</div>
					
					<div class="col-md-2 conten">
						<div class="center">
						
							<p><%=p.getDescrizione()%></p>
							
						</div>
					</div>
					
					<div class="col-md-2 conten">
						<div class="center">
						
							<p>&euro;<%=p.getPrezzo()%></p>
						
						</div>	
					</div>
					
					<div class="col-md-2 conten">
						<div class="center">
						
								
						<form action="quantity" method="get"> 
						<!-- AGGIORNA -->
						<!-- TODO -->
						<span> <input type="number" id="number" min="0" value="1" style="width:35px;"> </span>
							   
							  <button type="submit">
							    <i class="fas fa-sync-alt"></i>
							</button>
							
						</form>

						
						</div>	
					</div>
					
					<div class="col-md-2 conten">
						<div class="center">
						
							<!-- CANCELLA -->
							<a href="deleteitem?id=<%=p.getId()%>"><i class="fas fa-trash-alt"></i></a>
						
						</div>	
					</div>
					
					
			</div>
			
											
			 <% } %>
			
	<!-- TABELLA RESOCONTO CARRELLO -->
	<br>
	
				<div class="row" style="border: 2px solid black;margin-bottom: 30px;">
			
					<div class="col-md-4">
						
						<div class="center">
							<p class="btn"> N° Articoli: <% out.print(cart.size()); %> </p>
						</div>	
					</div>
					
					
					<div class="col-md-4">
											
						<div class="center">
							<p class="btn"> Totale:  da fare  </p>
						</div>
						
					</div>
					
					<div class="col-md-4">
						
						<div class="center">
							<a href="checkout" class="btn btn-success"> Paga ora </a>
						</div>	
						
					</div>
					
					
				</div>			
			
	
	
	
	
			
</div>



<jsp:include page="footer.jsp"></jsp:include>