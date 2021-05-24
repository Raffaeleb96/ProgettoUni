package it.unisa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import it.unisa.model.Utente;


public class UtenteDAO {
	
	private Statement st;
	private PreparedStatement ps;
	
	public UtenteDAO() {
		
		//recuperiamo la connessione al db
		
		Connection c = ConnessioneDB.getConnessione();
		
		if(c!=null) {
			
			
			/*
			 * per eseguire una query ho bisogno di oggetto di tipo STATEMENT O PREPAREDSTATEMENT
			 * 
			 * Statement st
			 * PreparedStatement ps
			 * 
			 * st e ps dipendono dalla connessione
			 * questi due oggetti quindi non vengono creati con la new ma vengono creati tramite c
			 */
			
			
			try {
				
				st = c.createStatement();
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
		}
		
	}
	
	
	
	
	

	public boolean inserisci(Utente s) {
		
	//controllo he i valori non siano vuoti TODO	
	String sql = "INSERT INTO Utente (nome,cognome) VALUES (?,?,?)";	
	//mi dichiaro la variabile String con la query
		
	try {
		ps = ConnessioneDB.getConnessione().prepareStatement(sql);
	
	//i segnaposto partono da uno
	ps.setString(1, s.getNome());
	ps.setString(2, s.getCognome());
	
		/*
		 * uso executeQuery quando devo fare una select, executeUpdate quando ho una query con i ?(segnaposto), e execute quando devo eeseguire una insert into completa
		 */
	ps.executeUpdate();				//si usa con il preparedStatement e i segnaposto
	return true;
	
	} catch (SQLException e) {
		
		return false;
	}
	

	

	}
	
	
	
	
	
	
	
	public boolean modifica(Utente s) {
		
		//UPDATE tabella SET colonna = val, colonna = val;
		
		//mi dichiaro la stringa sql con la query
		String sql = "UPDATE Utente SET nome = ?, cognome = ?, classe = ? WHERE id = ?";
		
		try {
			
			ps = ConnessioneDB.getConnessione().prepareStatement(sql);
			
			ps.setString(1, s.getNome());
			ps.setString(2, s.getCognome());
			ps.setInt(4, s.getId());
			
			//i segnaposto partono da uno
			ps.executeUpdate();				//si usa con il preparedStatement e i segnaposto 
			return true;
			
			
		} catch (SQLException e) {
			return false;
		}
		
		

		
		
		
				
				
		
		
	}
	
	public boolean cancellaUno(int id) throws SQLException {
		
		//UPDATE tabella SET colonna = val, colonna = val;
		
				//mi dichiaro la stringa sql con la query
				String sql = "DELETE FROM utente WHERE id = "+id;
		
				
				try {
					
					st.execute(sql);	
					return true;
					
					
				} catch (SQLException e) {
					return false;
				}
		
	}
	
	public boolean cancellaTutti() {
		
		String sql = "DELETE FROM utente";
		
		
		try {
			
			st.execute(sql);	
			return true;
			
			
		} catch (SQLException e) {
			return false;
		}

		
	}
	
//	public Utente recuperaUno(int id) {
//		
//		//dichiaro stringa di query
//		
//		String sql = "SELECT * FROM Utente WHERE id="+id;
//		Utente s = new Utente();
//		
//		
//		
//		//recupero la riga dal database
//
//		try {
//			ResultSet rs = st.executeQuery(sql);				//EXECUTE QUERY SI UTILIZZA PER PRELEVARE DA MYSQL
//			
//			 rs.next();			// chiamo next una sola volta perchè voglio un solo risultato	
//			 					// posso anche chiamare un while su next, in base alla query dichiarata 
//			 					// tornerà un solo risultato
//			 
//			 				s = new Utente(     
//											id,
//											rs.getString("nome"),	
//											rs.getString("cognome") 
//											);
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		//ritorno l'oggetto di tipo Utente prelevato dal database tramite query
//		
//		return s;
//
//	}
	
	
	/*
	 * Una query di tipo SELECT può generare :
	 * ---> insieme di righe
	 * ---> insieme vuoto
	 * --->errore
	 * 
	 * In java l'insieme di righe generato dall'esecuzione della query
	 * viene gestito tramite un oggetto che si chiama ResultSet
	 * ---> all'interno c'è il risultato della query
	 * 
	 * per poter utilizzare i dati recuperati devo processare resultset
	 * 
	 * +next() : boolean
	 * metodo della classe ResultSet che permette di scorrere le righe generate dalla query 
	 * 
	 * possiamo accedere ad una riga per volta, quella puntata in un determinato momento
	 * --->viene utilizzato un cursore interno, simile alla i del for
	 * 
	 * il metodo restituisce false quando non ci sono 
	 * 
	 * possiamo costruire un nostro ciclo
	 * ---> mentre(ci sono righe)
	 * 		recupera info riga
	 * 
	 * ResultSet mette a disposizione altri metodi GET
	 * ---> getTipo
	 * 				+getInt(String) : int
	 * 				+getInt(Int) : int
	 * 				+getString(String) : String
	 * 				....
	 * 
	 * @param nome della colonna di interesse oppure la posizione occupata nella lista di colonne in select
	 * (la numerazione parte da 1)
	 * 
	 */
//	public ArrayList<Utente> recuperaTutti() {
//		
//		//dichiaro la stringa query
//		String sql ="SELECT * FROM Utente";
//		ArrayList<Utente> elenco = new ArrayList<Utente>();
//		
//		//eseguo la query e salvo il risultato
//		try {
//			ResultSet rs = st.executeQuery(sql);
//			
//			
//			//processo il risultato
//			
//			/*mentre ci sono righe
//			 * ne estrapolo una alla volta (avviene in automatico)
//			 * processo la singola riga
//			 * salvo oggetto Utente nell'array
//			 */
//			
//			while(rs.next()) {
//				
//				elenco.add(		new Utente( 
//									rs.getInt("id"),
//									rs.getString("nome"),
//									rs.getString("cognome"),
//									rs.getString("classe")
//
//									)
//						);
//				
//			}
//			
//
//		} catch (SQLException e) {
//			// 
//			e.printStackTrace();
//		}
//		
//		
//		return elenco;
//	}

	
	

}
