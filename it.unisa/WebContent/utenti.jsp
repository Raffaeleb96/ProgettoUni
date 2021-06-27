<jsp:include page="header.jsp"></jsp:include>

<%@page import="java.util.ArrayList"%>
<%@page import="it.unisa.model.*"%>

<jsp:useBean id="elenco" class="java.util.ArrayList" scope="request"></jsp:useBean>
<jsp:useBean id="utente" class="it.unisa.model.Utente" scope="request"></jsp:useBean>




<div class="container">
	<div class="row">

			
			CIAO<%= utente.getNome() %>, benvenuto!


				<% for(Utente u : (ArrayList<Utente>)(Object) elenco) { %>		<!-- un arraylist che proviene da un object deve essere castato 
																						due volte per essere riconosciuto  -->
					
						<div class="col-md-3">
					
				
				
							<p><%= u.getNome()%></p>
							
						
						</div>
					
				<% } %> 

</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>