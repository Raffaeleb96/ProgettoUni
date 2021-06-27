package it.unisa.model;

public class Prodotto {
	
	private int id, quantita;
	private String nome, categoria, descrizione,foto;
	private double prezzo;
	
	public Prodotto() {
		super();
	}

	public Prodotto(int id, String nome, String categoria, int quantita, String descrizione, double prezzo, String foto) {
		super();
		this.id = id;
		this.nome = nome;
		this.categoria = categoria;
		this.quantita = quantita;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
		this.foto=foto;
	}

	public Prodotto(String nome, String categoria, int quantita, String descrizione, double prezzo,String foto) {
		super();
		this.nome = nome;
		this.categoria = categoria;
		this.quantita = quantita;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
		this.foto=foto;
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

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
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
	
	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	@Override
	public String toString() {
		return "Prodotto [id=" + id + ", quantita=" + quantita + ", nome=" + nome + ", categoria=" + categoria
				+ ", descrizione=" + descrizione + ", foto=" + foto + ", prezzo=" + prezzo + "]";
	}

	
	
	
	

}
