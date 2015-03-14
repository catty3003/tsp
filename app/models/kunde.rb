class Kunde < ActiveRecord::Base
	has_many :anmeldungs
	validates :gruppe, :anrede, :nachname, :vorname, :geburtsdatum, :geburtsort, :adresse, :plz, :stadt, presence: true
	validates_inclusion_of :tsp_versicherungskunde, :in => [true, false]
	validates_length_of :plz, :maximum => 5


	def full_name
    "ID: " + self.id.to_s + ". " + self.nachname + ", " + self.vorname
  end
  
end

