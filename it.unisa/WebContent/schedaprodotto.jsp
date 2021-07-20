	<jsp:include page="header.jsp"></jsp:include>


	<%@page import="it.unisa.model.*"%>	
	
	
	<jsp:useBean id="user" class="it.unisa.model.Utente" scope="session"></jsp:useBean>
	
	<jsp:useBean id="prodotto" class="it.unisa.model.Prodotto" scope="request"></jsp:useBean>
	


<div class="container">
		<div class="whitecolor" style="height:30em;">
		
		
			<div class="row">
			
				<div class="col-md-6">
				
					<div class="center margin"> <h1><%=prodotto.getNome()%> </h1></div>
					
					<div class="center margin"> <img class="imgsize" src="imgs/<%=prodotto.getFoto()%>" alt="non disponibile" > </div>
				
			</div>
				
				
				<div class="col-md-6">
									
					<div> <h4> Descrizione:</h4></div>
					<div class="margin"> <h5> <%= prodotto.getDescrizione() %></h5></div>
					
					<div> <h4> Prezzo:</h4> </div>
					<div class="margin"> <h5> <%= prodotto.getPrezzo() %> &euro;</h5></div>
				
				
				<div class="margin" style="margin-top:30px">
					
						<form action="aggiungicarrello" method="post">
						
							 <input type="hidden" name="id" id="id" value="<%=prodotto.getId()%>">
							 <input type="hidden" name="categoria" id="categoria" value="<%=prodotto.getCategoria()%>">
						
							<!-- TODO da modificare -->
							
																<script>
																
																function func() {
																	alert('Prodotto aggiunto al carrello!');
																}
																
																</script>
																
						
															
							 <input type="submit" value="aggiungi al carrello" class="btn btn-primary" onclick="func()">
							 
							 
							  <span style="margin-left:20px">Quantità:</span>
							 <!-- TODO  verificare la quantità di prodotti disponibili e confrontare con l'utente se ce ne sono abbastanza-->
							 
							 
								<span> 
									<input type="number" id="number" min="1" value="1" style="width:35px; border:2px solid">
								</span>								
									<!-- TODO  -->	
								
						
						
						</form>
					
					
					
					
					
					
					
				</div>
				
				
				
				</div>
				
				
					
				
				
				
				
							
			</div>
		
	</div>
</div>

<jsp:include page="footer.jsp" />