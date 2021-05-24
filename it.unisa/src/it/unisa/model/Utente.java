package it.unisa.model;

public class Utente {
	
		private int id;
		//con cellulare ho problemi, l'ho dichiarato string
		private String nome, cognome, indirizzo, email, password, cellulare, tipo;
		
			//costruttore vuoto
		public Utente() {
			super();
		}

			//costruttore con tutti i campi
		public Utente(int id, String nome, String cognome, String indirizzo, String email, String password,
				String cellulare, String tipo) {
			super();
			this.id = id;
			this.nome = nome;
			this.cognome = cognome;
			this.indirizzo = indirizzo;
			this.email = email;
			this.password = password;
			this.cellulare = cellulare;
			this.tipo = tipo;
		}
			//costruttore con tutti i campi senza ID
		public Utente(String nome, String cognome, String indirizzo, String email, String password, String cellulare,
				String tipo) {
			super();
			this.nome = nome;
			this.cognome = cognome;
			this.indirizzo = indirizzo;
			this.email = email;
			this.password = password;
			this.cellulare = cellulare;
			this.tipo = tipo;
		}

		
		
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public String getCognome() {
			return cognome;
		}

		public void setCognome(String cognome) {
			this.cognome = cognome;
		}

		public String getIndirizzo() {
			return indirizzo;
		}

		public void setIndirizzo(String indirizzo) {
			this.indirizzo = indirizzo;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getCellulare() {
			return cellulare;
		}

		public void setCellulare(String cellulare) {
			this.cellulare = cellulare;
		}

		public String getTipo() {
			return tipo;
		}

		public void setTipo(String tipo) {
			this.tipo = tipo;
		}

		@Override
		public String toString() {
			return "Ordine [id=" + id + ", nome=" + nome + ", cognome=" + cognome + ", indirizzo=" + indirizzo
					+ ", email=" + email + ", password=" + password + ", cellulare=" + cellulare + ", tipo=" + tipo
					+ "]";
		}
		
}