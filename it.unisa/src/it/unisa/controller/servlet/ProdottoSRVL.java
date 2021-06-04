package it.unisa.controller.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.dao.ProdottoDAO;
import it.unisa.dao.UtenteDAO;
import it.unisa.model.Prodotto;
import it.unisa.model.Utente;



/**
 * Servlet implementation class UtenteSRVL
 */
@WebServlet({"/prodotti", "/mascherine","/disinfettanti"})
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
		
		
		default:
			throw new IllegalArgumentException("Unexpected value: " + richiesta);
		}

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
