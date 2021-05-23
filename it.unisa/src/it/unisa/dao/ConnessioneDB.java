package it.unisa.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnessioneDB {

	
	
	
	/*
	 * la classe connessioneDB mette a disposizione due metodi statici per recuperare
	 * un oggetto che rappresenta la connessione fisica al database.
	 * 
	 * la differenza tra i due metodi è relativa solo alla gestione delle informazioni
	 * di interesse: il metodo senza parametri gestisce valori di default, la versione
	 * con i parametri permette di personalizzare i vari valori.
	 */
	
	public static Connection getConnessione() {
		
		/*
		 * connessione al database di cui si conoscono tutti valori di accesso
		 * 
		 * @return l'oggetto di Connessione utilizzando valori di default
		 */
		
		String server = "localhost";
		int porta = 3306;
		String nomeUtente = "root";
		String password = "09090601";
		
		String nomeDB = "healthy4u";
		
		//_______________________________________________________
		
		
		String megaURL = "jdbc:mysql://" + server + ":" + porta + "/" + nomeDB;
		
		megaURL += "?serverTimeZone=UTC";
		
		//_______________________________________________________
		
		Connection connessione = null;
		
		try {
			connessione = DriverManager.getConnection(megaURL, nomeUtente, password);
		} catch (SQLException e) {
			
			System.out.println("ERRORE: connessione fallita");
			System.out.println(e.getMessage());
			
		}
		
		return connessione;
		
	}
	
	
	public Connection getConnessione(String server, int porta, String nomeUtente, String password, String nomeDB) {
		
					
			
			String megaURL = "jdbc:mysql://" + server + ":" + porta + "/" + nomeDB;
			
			megaURL += "?serverTimeZone=UTC";
			
			//_______________________________________________________
			
			Connection connessione = null;
			
			try {
				connessione = DriverManager.getConnection(megaURL, nomeUtente, password);
			} catch (SQLException e) {
				
				System.out.println("ERRORE: connessione fallita");
				System.out.println(e.getMessage());
				
			}
			
			return connessione;
			
		
	}
	
	

	
	
	
	
}
