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
							<a href="schedaprodotto?id=<%=p.getId()%>&categoria=<%=p.getCategoria()%>" style="text-decoration: none; color:black;">
								<div class="col-md center">
								
									<div><h3><%=p.getNome()%></h3></div>
									
									<div class="center"> <img class="imgsize" src="imgs/<%=p.getFoto()%>" alt="non disponibile" >  </div>
									
										 
										 <p> Prezzo: <%=(Double) p.getPrezzo()%>&euro; </p>
										 
										 <form action="aggiungicarrello" method="post">
										 
										 
											 <input type="hidden" name="id" id="id" value="<%=p.getId()%>">
											 <input type="hidden" name="categoria" id="categoria" value="<%=p.getCategoria()%>">
											 
											
											 
											 				<!-- TODO da modificare -->
																<script>
																
																function func() {
																	alert('Prodotto aggiunto al carrello!');
																}
																
																</script>
											 
											 <input type="submit" value="aggiungi al carrello" onclick="func()"> 
		
										</form>
									</div>
								</a>
							</div>
							
							
					
							
						
						</div>
					
				<% } %> 
			
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>