class Kunde < ActiveRecord::Base
	has_many :anmeldungs

	def full_name
    "ID: " + self.id.to_s + ". " + self.nachname + ", " + self.vorname
  end
  
end

