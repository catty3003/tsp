class CreateAnmeldungs < ActiveRecord::Migration
  def change
    create_table :anmeldungs do |t|
      t.string :identnummer
      t.string :fz_brief_nr
      t.string :amtliches_kennzeichen1
      t.string :amtliches_kennzeichen2
      t.string :neues_kennzeichen1
      t.string :neues_kennzeichen2
      t.boolean :feinstaubplakette
      t.date :saison_von
      t.date :saison_bis
      t.string :evb_nr
      t.text :kva_notiz
      t.text :tsp_notiz
      t.boolean :versand_art
      t.integer :kunde_id

      t.timestamps null: false
    end
  end
end
