package it.unisa.controller.service;

import java.util.ArrayList;
import java.util.List;

import it.unisa.dao.CRUD;
import it.unisa.dao.UtenteDAO;


import it.unisa.model.*;

public class UtenteSRVC {
	
	/*
	 * dichiaro l'oggetto dao tramite il quale verranno
	 * gestite le varie query
	 */
	
	
	private CRUD dao;
	
	public UtenteSRVC() {
//		dao =  new UtenteDAO();
	}
	

	
	/*
	 * 
	 * Metodo che recupera l'elenco di prodotti 
	 * gestendo una chiamata DAO
	 * 
	 * @return lista con i prodotti recuperati  
	 * 
	 */

	public List<Object> recuperaUtenti(){
		
		List<Object> elenco = dao.recuperaTutti();
		
		return elenco;
	}
	
	//--------------------------------------------------------------
	
	/*
	 * + recuperaUtente(int)
	 * metodo che recupera le informazioni relative ad un Utente di cui si conosce l'id
	 */
	
	public Utente recuperaUtente(int id) {
		return (Utente) dao.recuperaUno(id);
	}
	
	public Utente recuperaUtente() {
		return (Utente) dao.recuperaTutti();
	}
	
	public boolean aggiungi(Utente prod) {	
		return dao.aggiungi(prod);
	}
	
	
	//--------------------------------------------------------------
	
	public void cancella(int id) {
		dao.cancellaUno(id);
	}
	
	public boolean modifica(Utente p) {
		return dao.modifica(p);
	}
	
	
}
