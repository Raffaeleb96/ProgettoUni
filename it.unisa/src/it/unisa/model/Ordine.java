package it.unisa.model;

import java.util.Date;

public class Ordine {
	
	private int id, id_utente;
	
	private String stato, indirizzoSpedizione;
	private Date data;
	private double importoTotale;
	
	public Ordine() {
		super();
	}


	public Ordine(int id_utente, String stato, String indirizzoSpedizione, Date data, double importoTotale) {
		super();
		this.id_utente = id_utente;
		this.stato = stato;
		this.indirizzoSpedizione = indirizzoSpedizione;
		this.data = data;
		this.importoTotale = importoTotale;
	}



	public Ordine(int id, int id_utente, String stato, String indirizzoSpedizione, Date data, double importoTotale) {
		super();
		this.id = id;
		this.id_utente = id_utente;
		this.stato = stato;
		this.indirizzoSpedizione = indirizzoSpedizione;
		this.data = data;
		this.importoTotale = importoTotale;
	}






	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public String getIndirizzoSpedizione() {
		return indirizzoSpedizione;
	}

	public void setIndirizzoSpedizione(String indirizzoSpedizione) {
		this.indirizzoSpedizione = indirizzoSpedizione;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public double getImportoTotale() {
		return importoTotale;
	}

	public void setImportoTotale(double importoTotale) {
		this.importoTotale = importoTotale;
	}


	public int getId_utente() {
		return id_utente;
	}


	public void setId_utente(int id_utente) {
		this.id_utente = id_utente;
	}


	@Override
	public String toString() {
		return "Ordine [id=" + id + ", id_utente=" + id_utente + ", stato=" + stato + ", indirizzoSpedizione="
				+ indirizzoSpedizione + ", data=" + data + ", importoTotale=" + importoTotale + "]";
	}








	
	

	
	
	
	
	

}