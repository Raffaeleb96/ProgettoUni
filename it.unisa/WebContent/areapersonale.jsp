	<jsp:include page="header.jsp"></jsp:include>


	<%@page import="it.unisa.model.*"%>	
	
	
	<jsp:useBean id="user" class="it.unisa.model.Utente" scope="session"></jsp:useBean>
	
	<jsp:useBean id="cart" class="java.util.ArrayList" scope="session"></jsp:useBean>
	


<div class="container">
		<div class="whitecolor" style="height:30em;">
		
		
			<div class="row">
			
				<div class="col-md">
				
				
					<div class="center">
						
						<h2 class="center margin"> <%=user.getNome() %>, è un piacere rivederti! </h2>
						
						
							<ul style="list-style-type: none;">
								<li><h4> <a href="#" style="text-decoration: none; color:black">I miei ordini</a></h4> </li>
								<li><h4> <a href="#" style="text-decoration: none; color:black">I miei indirizzi</a> </h4></li>
								<li><h4> <a href="#" style="text-decoration: none; color:black">Visualizza dati personali</a></h4> </li>
								<li><h4> <a href="#" style="text-decoration: none; color:black">Metodi di pagamento salvati</a></h4> </li>
								<li><h4> <a href="#" style="text-decoration: none; color:black">Richiedi cancellazione account</a> </h4></li>
							</ul>
						
					
					</div>
					
			
				
				</div>
							
			</div>
		
	</div>
</div>

<jsp:include page="footer.jsp" />