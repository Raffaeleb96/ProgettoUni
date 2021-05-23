package it.unisa.model;

import java.util.Date;

public class Spedizione {
	
	private int id;
	
	private Date dataInvio, dataRicezione;
	
	private String tracking;
	
	public Spedizione(){
		
	}

	public Spedizione(int id, Date dataInvio, Date dataRicezione, String tracking) {
		super();
		this.id = id;
		this.dataInvio = dataInvio;
		this.dataRicezione = dataRicezione;
		this.tracking = tracking;
	}

	public Spedizione(Date dataInvio, Date dataRicezione, String tracking) {
		super();
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

	@Override
	public String toString() {
		return "Spedizione [id=" + id + ", dataInvio=" + dataInvio + ", dataRicezione=" + dataRicezione + ", tracking="
				+ tracking + "]";
	}
	
	

	
	
}	