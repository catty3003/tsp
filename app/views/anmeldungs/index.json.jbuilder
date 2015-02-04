json.array!(@anmeldungs) do |anmeldung|
  json.extract! anmeldung, :id, :identnummer, :fz_brief_nr, :amtliches_kennzeichen1, :amtliches_kennzeichen2, :neues_kennzeichen1, :neues_kennzeichen2, :feinstaubplakette, :saison_von, :saison_bis, :evb_nr, :kva_notiz, :tsp_notiz, :versand_art, :kunde_id
  json.url anmeldung_url(anmeldung, format: :json)
end
