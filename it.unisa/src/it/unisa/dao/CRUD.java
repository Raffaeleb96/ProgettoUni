package it.unisa.dao;

import java.util.List;

public interface CRUD {
	
	/**
	 * Metodo per aggiungere una nuova riga ad
	 * una tabella del database 
	 * 
	 * @param o oggetto che contiene informazioni 
	 * da salvare 
	 * 
	 * @return true quando l'inserimento va a buon
	 * fine, false altrimenti 
	 */
	public boolean aggiungi(Object o);
	
	/**
	 * Metodo per cancellare una riga di
	 * una tabella del database 
	 * 
	 * @param id della riga da cancellare 
	 * @return true se l'operazione va a vbuon fine, false altrimenti
	 */
	public boolean cancellaUno(int id);
	
	/**
	 * Metodo per cancellare tutte le righe di
	 * una tabella del database 
	 */
	public void cancellaTutti();
	
	/**
	 * Metodo per modificare una riga di
	 * una tabella del database 
	 * 
	 * @param o oggetto che contiene id riga da 
	 * modificare e valori nuovi per tutte le altre
	 * colonne
	 * 
	 * @return true quando l'inserimento va a buon
	 * fine, false altrimenti 
	 */
	public boolean modifica(Object o);
	
	/**
	 * Metodo per recuperare le info relative
	 * ad una particolare riga di una tabella 
	 * 
	 * @param id riga da cercare
	 * @return oggetto che contiene tutte le 
	 * info della riga cercata
	 */
	public Object recuperaUno(int id);
	
	/**
	 * Metodo per recuperare tutte le righe di
	 * una tabella
	 * 
	 * @return elenco di righe 
	 */
	public List<Object> recuperaTutti();
	
	/**
	 * Metodo per recuperare righe di una tabella
	 * aventi determinate caratteristiche
	 * 
	 * @param where stringa che contiene la definizione 
	 * della clausola where, es. "id > 3", "nome = 'x'
	 * 
	 * @param order stringa che contiene la definizione 
	 * della clausola otrder by, es. "cognome, nome",
	 * 
	 * @return lista di righe che soddisfano i criteri
	 * selezionati
	 */
	public List<Object> recuperaTutti(String where, String order);


}
