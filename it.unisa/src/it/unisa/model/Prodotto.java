package it.unisa.model;

public class Prodotto {
	
	private int id;
	private String nome, categoria, quantita, descrizione;
	private double prezzo;
	
	public Prodotto() {
		super();
	}

	public Prodotto(int id, String nome, String categoria, String quantita, String descrizione, double prezzo) {
		super();
		this.id = id;
		this.nome = nome;
		this.categoria = categoria;
		this.quantita = quantita;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
	}

	public Prodotto(String nome, String categoria, String quantita, String descrizione, double prezzo) {
		super();
		this.nome = nome;
		this.categoria = categoria;
		this.quantita = quantita;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
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

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getQuantita() {
		return quantita;
	}

	public void setQuantita(String quantita) {
		this.quantita = quantita;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	@Override
	public String toString() {
		return "Prodotto [id=" + id + ", nome=" + nome + ", categoria=" + categoria + ", quantita=" + quantita
				+ ", descrizione=" + descrizione + ", prezzo=" + prezzo + "]";
	}
	
	
	

}
