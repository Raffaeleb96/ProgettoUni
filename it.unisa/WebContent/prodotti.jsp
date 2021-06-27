<jsp:include page="header.jsp"></jsp:include>

<%@page import="java.util.ArrayList"%>
<%@page import="it.unisa.model.*"%>

<jsp:useBean id="elenco" class="java.util.ArrayList" scope="request"></jsp:useBean>



<div class="container" style="background-color:#fff">
	<div class="row">

		<div class="center" style="margin:20px;"> <h1> I più venduti </h1> </div>

			

				<% for(Prodotto p : (ArrayList<Prodotto>)(Object) elenco) { %>		<!-- un arraylist che proviene da un object deve essere castato 
																						due volte per essere riconosciuto  -->
						
					
						<div class="col-lg-3">
								
						
							<div class="row">
								<div class="col-md center">
								
									<div><h3><%=p.getNome()%></h3></div>
									
									<div class="center"> <img class="imgsize" src="imgs/<%=p.getFoto()%>" alt="non disponibile" >  </div>
									
									<div class="center"> Descrizione: </div>
									
										 <o><%=p.getDescrizione()%></p>
										 
										 <p> Prezzo: <%=(Double) p.getPrezzo()%>&euro; </p>
										 
										 <form action="aggiungicarrello" method="post">
											 <input type="hidden" name="id" id="id" value="<%=p.getId()%>" >
											 
											 				<!-- TODO da modificare -->
																<script>
																
																function func() {
																	alert('Prodotto aggiunto al carrello!');
																	
																}
																
																</script>
											 
											 <input type="submit" value="aggiungi al carrello" onclick="func()"> 
		
										</form>
								</div>
							</div>
					
							
						
						</div>
					
				<% } %> 
			
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>