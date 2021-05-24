package it.unisa.model;

import java.util.Date;

public class Valutazione {
	
	private int id, id_utente, id_prodotto, score;
	
	private Date dataValutazione;
	
	private String descrizione;

	public Valutazione() {
		super();
	}

	

	public Valutazione(int id, int id_utente, int id_prodotto, int score, Date dataValutazione, String descrizione) {
		super();
		this.id = id;
		this.id_utente = id_utente;
		this.id_prodotto = id_prodotto;
		this.score = score;
		this.dataValutazione = dataValutazione;
		this.descrizione = descrizione;
	}

	

	public Valutazione(int id_utente, int id_prodotto, int score, Date dataValutazione, String descrizione) {
		super();
		this.id_utente = id_utente;
		this.id_prodotto = id_prodotto;
		this.score = score;
		this.dataValutazione = dataValutazione;
		this.descrizione = descrizione;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public Date getDataValutazione() {
		return dataValutazione;
	}

	public void setDataValutazione(Date dataValutazione) {
		this.dataValutazione = dataValutazione;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}



	@Override
	public String toString() {
		return "Valutazione [id=" + id + ", id_utente=" + id_utente + ", id_prodotto=" + id_prodotto + ", score="
				+ score + ", dataValutazione=" + dataValutazione + ", descrizione=" + descrizione + "]";
	}

	

	
	
	
}
