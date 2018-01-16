package it.unisannio.tsw.rosariogoglia.model;

import java.util.Date;


public interface MessaggioPrivato {
	
	public Integer getIdMessaggioPrivato();

	public void setIdMessaggioPrivato(Integer idMessaggioPrivato);

	public String getTesto();

	public void setTesto(String testo);

	public String getNomeUtente();

	public void setNomeUtente(String nomeUtente);

	public String getOggetto();

	public void setOggetto(String oggetto);

	public Date getDataInvio();

	public void setDataInvio(Date dataInvio);

	public Integer getIdUtenteRegistratoMittente();

	public void setIdUtenteRegistratoMittente(Integer idUtenteRegistratoMittente);

	public UtenteRegistrato getUtenteRegistratoMittente();

	public void setUtenteRegistratoMittente(UtenteRegistrato utenteRegistratoMittente);

	public Integer getIdUtenteRegistratoDestinatario();

	public void setIdUtenteRegistratoDestinatario(Integer idUtenteRegistratoDestinatario);

	public UtenteRegistrato getUtenteRegistratoDestinatario();

	public void setUtenteRegistratoDestinatario(UtenteRegistrato utenteRegistratoDestinatario);
		
	public String toString();
	
	public boolean equals(Object messPrivato);

	
}
