package it.unisa.model;

import java.util.Date;

public class Valutazione {
	
	private int id, score;
	
	private Date dataValutazione;
	
	private String descrizione;

	public Valutazione() {
		super();
	}

	public Valutazione(int id, int score, Date dataValutazione, String descrizione) {
		super();
		this.id = id;
		this.score = score;
		this.dataValutazione = dataValutazione;
		this.descrizione = descrizione;
	}

	public Valutazione(int score, Date dataValutazione, String descrizione) {
		super();
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
		return "Valutazione [id=" + id + ", score=" + score + ", dataValutazione=" + dataValutazione + ", descrizione="
				+ descrizione + "]";
	}

	
	
	
}
