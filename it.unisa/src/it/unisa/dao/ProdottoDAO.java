package it.unisa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import it.unisa.model.Prodotto;


public class ProdottoDAO {
	
	private Statement st;
	private PreparedStatement ps;
	
	public ProdottoDAO() throws ClassNotFoundException {
		
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
	
	
	
	
	
//TODO
	public boolean inserisci(Prodotto s) throws ClassNotFoundException {
		
	//controllo he i valori non siano vuoti TODO	
	String sql = "INSERT INTO prodotto (nome,cognome) VALUES (?,?,?)";	
	//mi dichiaro la variabile String con la query
		
	try {
		ps = ConnessioneDB.getConnessione().prepareStatement(sql);
	
	//i segnaposto partono da uno
	ps.setString(1, s.getNome());
	
	
		/*
		 * uso executeQuery quando devo fare una select, executeUpdate quando ho una query con i ?(segnaposto), e execute quando devo eeseguire una insert into completa
		 */
	ps.executeUpdate();				//si usa con il preparedStatement e i segnaposto
	return true;
	
	} catch (SQLException e) {
		
		return false;
	}
	

	

	}
	
	
	
	
	
	
//	TODO
	public boolean modifica(Prodotto s) throws ClassNotFoundException {
		
		//UPDATE tabella SET colonna = val, colonna = val;
		
		//mi dichiaro la stringa sql con la query
		String sql = "UPDATE Prodotto SET nome = ?, cognome = ?, classe = ? WHERE id = ?";
		
		try {
			
			ps = ConnessioneDB.getConnessione().prepareStatement(sql);
			
			ps.setString(1, s.getNome());
		
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
				String sql = "DELETE FROM prodotto WHERE id = "+id;
		
				
				try {
					
					st.execute(sql);	
					return true;
					
					
				} catch (SQLException e) {
					return false;
				}
		
	}
	
//	public boolean cancellaTutti() {
//		
//		String sql = "DELETE FROM Prodotto";
//		
//		
//		try {
//			
//			st.execute(sql);	
//			return true;
//			
//			
//		} catch (SQLException e) {
//			return false;
//		}
//
//		
//	}
	
	public Prodotto recuperaUno(int id) {
		
		//dichiaro stringa di query
		
		String sql = "SELECT * FROM prodotto WHERE id="+id;
		Prodotto s = new Prodotto();
		
		
		
		//recupero la riga dal database

		try {
			ResultSet rs = st.executeQuery(sql);				//EXECUTE QUERY SI UTILIZZA PER PRELEVARE DA MYSQL
			
			 rs.next();			// chiamo next una sola volta perch� voglio un solo risultato	
			 					// posso anche chiamare un while su next, in base alla query dichiarata 
			 					// torner� un solo risultato
			 
			 				s = new Prodotto( 
									rs.getInt("id"),
									rs.getString("nome"),
									rs.getString("categoria"),
									rs.getInt("quantita"),
									rs.getString("descrizione"),
									rs.getDouble("prezzo"),
									rs.getString("foto")
									
											);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//ritorno l'oggetto di tipo Prodotto prelevato dal database tramite query
		
		return s;

	}
	
	
	/*
	 * Una query di tipo SELECT pu� generare :
	 * ---> insieme di righe
	 * ---> insieme vuoto
	 * --->errore
	 * 
	 * In java l'insieme di righe generato dall'esecuzione della query
	 * viene gestito tramite un oggetto che si chiama ResultSet
	 * ---> all'interno c'� il risultato della query
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
	
	
//	recupero un solo elemento sapendo l'id e la categoria
	
public Prodotto recuperaUno(int id, String categoria) {
		
		
		
		String sql = "SELECT * FROM prodotto WHERE id='"+id+"' && categoria='"+categoria+"'";
		Prodotto s = new Prodotto();
		
		


		try {
			ResultSet rs = st.executeQuery(sql);				//EXECUTE QUERY SI UTILIZZA PER PRELEVARE DA MYSQL
			
			 rs.next();			
			 
			 				s = new Prodotto( 
									rs.getInt("id"),
									rs.getString("nome"),
									rs.getString("categoria"),
									rs.getInt("quantita"),
									rs.getString("descrizione"),
									rs.getDouble("prezzo"),
									rs.getString("foto")
									
											);
			
		} catch (SQLException e) {
			e.printStackTrace();
			e.getMessage();
		}
		
		
		
		return s;

	}
	
	
	
	public ArrayList<Prodotto> recuperaTutti() {
		
		//dichiaro la stringa query
		String sql ="SELECT * FROM prodotto";
		ArrayList<Prodotto> elenco = new ArrayList<Prodotto>();
		
		//eseguo la query e salvo il risultato
		try {
			ResultSet rs = st.executeQuery(sql);
			
			
			//processo il risultato
			
			/*mentre ci sono righe
			 * ne estrapolo una alla volta (avviene in automatico)
			 * processo la singola riga
			 * salvo oggetto Prodotto nell'array
			 */
			
			while(rs.next()) {
				
				elenco.add(		new Prodotto( 
						rs.getInt("id"),
						rs.getString("nome"),
						rs.getString("categoria"),
						rs.getInt("quantita"),
						rs.getString("descrizione"),
						rs.getDouble("prezzo"),
						rs.getString("foto")
						
											)
							);
				
							}
			

		} catch (SQLException e) {
			e.getMessage();
		}
		
		
		return elenco;
	}

	
	
	
//	recupera un elenco di prodotti dati dalla categoria tra parentesi passata come parametro al metodo
	
public ArrayList<Prodotto> recuperaTutti(String categoria) {
		
		//dichiaro la stringa query
		String sql ="SELECT * FROM prodotto where categoria='"+categoria+"'";
		ArrayList<Prodotto> elenco = new ArrayList<Prodotto>();
		
		//eseguo la query e salvo il risultato
		try {
			ResultSet rs = st.executeQuery(sql);
			
			
			//processo il risultato
			
			/*mentre ci sono righe
			 * ne estrapolo una alla volta (avviene in automatico)
			 * processo la singola riga
			 * salvo oggetto Prodotto nell'array
			 */
			
			while(rs.next()) {
				
				elenco.add(		new Prodotto( 
						rs.getInt("id"),
						rs.getString("nome"),
						rs.getString("categoria"),
						rs.getInt("quantita"),
						rs.getString("descrizione"),
						rs.getDouble("prezzo"),
						rs.getString("foto")
											)
							);
				
							}
			

		} catch (SQLException e) {
			e.getMessage();
		}
		
		
		return elenco;
	}

}
