class Anmeldung < ActiveRecord::Base
	belongs_to :kunde

	validates :identnummer, :fz_brief_nr, :amtliches_kennzeichen1, :amtliches_kennzeichen2, :neues_kennzeichen1, :neues_kennzeichen2, presence: true
	validates :evb_nr, :kunde_id, presence: true
	validates_inclusion_of :feinstaubplakette, :versand_art,:in => [true, false]

end
