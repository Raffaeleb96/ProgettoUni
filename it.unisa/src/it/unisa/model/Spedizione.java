package it.unisa.model;

import java.util.Date;

public class Spedizione {
	
	private int id, id_ordine;
	
	private Date dataInvio, dataRicezione;
	
	private String tracking;
	
	public Spedizione(){
		
	}

	public Spedizione(int id_ordine, Date dataInvio, Date dataRicezione, String tracking) {
		super();
		this.id_ordine = id_ordine;
		this.dataInvio = dataInvio;
		this.dataRicezione = dataRicezione;
		this.tracking = tracking;
	}

	

	public Spedizione(int id, int id_ordine, Date dataInvio, Date dataRicezione, String tracking) {
		super();
		this.id = id;
		this.id_ordine = id_ordine;
		this.dataInvio = dataInvio;
		this.dataRicezione = dataRicezione;
		this.tracking = tracking;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDataInvio() {
		return dataInvio;
	}

	public void setDataInvio(Date dataInvio) {
		this.dataInvio = dataInvio;
	}

	public Date getDataRicezione() {
		return dataRicezione;
	}

	public void setDataRicezione(Date dataRicezione) {
		this.dataRicezione = dataRicezione;
	}

	public String getTracking() {
		return tracking;
	}

	public void setTracking(String tracking) {
		this.tracking = tracking;
	}

	public int getId_ordine() {
		return id_ordine;
	}

	public void setId_ordine(int id_ordine) {
		this.id_ordine = id_ordine;
	}

	@Override
	public String toString() {
		return "Spedizione [id=" + id + ", id_ordine=" + id_ordine + ", dataInvio=" + dataInvio + ", dataRicezione="
				+ dataRicezione + ", tracking=" + tracking + "]";
	}

	
	
	

	
	
}	