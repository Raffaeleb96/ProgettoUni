package it.unisa.controller.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.unisa.dao.ProdottoDAO;

import it.unisa.model.Prodotto;




/**
 * Servlet implementation class UtenteSRVL
 */
@WebServlet({"/prodotti", "/mascherine","/disinfettanti", "/aggiungicarrello","/cart"})
public class ProdottoSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ProdottoDAO service;

	/**
	 * @throws ClassNotFoundException 
	 * @see HttpServlet#HttpServlet()
	 */
	public ProdottoSRVL() throws ClassNotFoundException {
		super();
		service = new ProdottoDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// recupero l'url che ha generato la request per vedere quale richiesta è stata
		// chiamata
		String richiesta = request.getServletPath();

		switch (richiesta) {
		case "/prodotti":	recuperaProdotti(request, response);	break; 
		case "/mascherine":	recuperaMascherine(request, response);	break; 
		case "/disinfettanti":recuperaDisinfettanti(request, response);	break;
		case "/aggiungicarrello":aggiungiCarrello(request, response);	break;
		case "/cart": mostraCarrello(request, response);	break;

		
		
		default:
			throw new IllegalArgumentException("Unexpected value: " + richiesta);
		}

	}
	
	

	private void mostraCarrello(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.getRequestDispatcher("Carrello.jsp").forward(request, response);
		
	}
	
	
	
	

	private void aggiungiCarrello(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		//TEST PER 1 SOLO PRODOTTO
		
		//recupero l'indice dal prodotto scelto
		int index = Integer.parseInt(request.getParameter("id"));
		
		//recupero il prodotto completo dalla lista dei prodotti
		Prodotto recuperato = recuperaProdotto(index);
		
		//recupero la sessione
		HttpSession session = request.getSession();
		
		//recupero il carrello
		ArrayList<Prodotto> cart =  (ArrayList<Prodotto>) session.getAttribute("cart");
		
		//aggiungo il prodotto al carrello
		cart.add(recuperato);
		
		//ri-setto il carrello perchè ho aggiunto un elemento alla sessione
		session.setAttribute("cart", cart);
		
		//salvo l'elemento recuperato per mostrare l'avvenuta registrazione nel carrello
		request.setAttribute("prodottoaggiunto",recuperato);
		System.out.println(recuperato);
		
		
		response.sendRedirect("cart");

		
		
	}

	private Prodotto recuperaProdotto(int id) {
		
		//Recupero tutti i prodotti
		ArrayList<Prodotto> lista = service.recuperaTutti();
		
		//prelevo quello che l'utente ha scelto
		Prodotto recuperato = lista.get(id);
		
		//ritorno il prodotto scelto 
		return recuperato;
	}
	
	
	

	private void recuperaDisinfettanti(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

			
			List<Prodotto> lista = service.recuperaTutti("disinfettanti");

			request.setAttribute("elenco", lista);

			request.getRequestDispatcher("prodotti.jsp").forward(request, response);
			
		
	}

	private void recuperaMascherine(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {

			
			List<Prodotto> lista = service.recuperaTutti("mascherine");

			request.setAttribute("elenco", lista);

			request.getRequestDispatcher("prodotti.jsp").forward(request, response);
			
		
	}

	private void recuperaProdotti(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Prodotto> lista = service.recuperaTutti();

		request.setAttribute("elenco", lista);

		request.getRequestDispatcher("prodotti.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
