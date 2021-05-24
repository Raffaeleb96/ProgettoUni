package it.unisa.model;

public class Vendita {

	private int id, id_prodotto, id_ordine;

	
	
	public Vendita() {
		super();
	}

	public Vendita(int id, int id_prodotto, int id_ordine) {
		super();
		this.id = id;
		this.id_prodotto = id_prodotto;
		this.id_ordine = id_ordine;
	}

	public Vendita(int id_prodotto, int id_ordine) {
		super();
		this.id_prodotto = id_prodotto;
		this.id_ordine = id_ordine;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_prodotto() {
		return id_prodotto;
	}

	public void setId_prodotto(int id_prodotto) {
		this.id_prodotto = id_prodotto;
	}

	public int getId_ordine() {
		return id_ordine;
	}

	public void setId_ordine(int id_ordine) {
		this.id_ordine = id_ordine;
	}

	@Override
	public String toString() {
		return "Vendita [id=" + id + ", id_prodotto=" + id_prodotto + ", id_ordine=" + id_ordine + "]";
	}
	
	
	
}
