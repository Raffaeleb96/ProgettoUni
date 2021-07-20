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

import it.unisa.dao.UtenteDAO;
import it.unisa.model.Prodotto;
import it.unisa.model.Utente;

/**
 * Servlet implementation class UtenteSRVL
 */
@WebServlet({"/utente","/login","/logout"})
public class UtenteSRVL extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UtenteDAO service;

	/**
	 * @throws ClassNotFoundException 
	 * @see HttpServlet#HttpServlet()
	 */
	public UtenteSRVL() throws ClassNotFoundException {
		super();
		service = new UtenteDAO();
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
		case "/utente":	recuperaUtenti(request, response);	break; 
		case "/login":	recuperaAccount(request, response);	break; 
		case "/logout":	logout(request, response);	break; 

		default:
			throw new IllegalArgumentException("Unexpected value: " + richiesta);
		}

	}


	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	//METODO CHE PERMETTE DI CONTROLLARE IL LOGIN DELL'UTENTE
	private void recuperaAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email + "  "+ password);
		
		Utente account = service.recuperaUno(email);
	
		
		//TODO FARE TUTTI I CONTROLLI
		
		
			if(password.equals(account.getPassword())) { 
			HttpSession session = request.getSession(true);
			
			session.setAttribute("user", account);
			session.setAttribute("cart", new ArrayList<Prodotto>());
			
			
			//setta il tempo della sessione, da modificare
			session.setMaxInactiveInterval(500);
			
			
			System.out.println(session.getAttribute("user"));
			request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else
				
				request.getRequestDispatcher("login.jsp").forward(request, response);
		
		
//		else
//			request.getRequestDispatcher("errore.jsp").forward(request, response);

		
	}

	
	//METODO CHE VISUALIZZA TUTTI GLI UTENTI, RESTITUISCE UNA LISTA DI TIPO UTENTE
	private void recuperaUtenti(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Utente> lista = service.recuperaTutti();

		request.setAttribute("elenco", lista);

		request.getRequestDispatcher("utenti.jsp").forward(request, response);
		
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
