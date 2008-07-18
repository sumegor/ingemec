class Pais < ActiveRecord::Base
	validates_presence_of :nombre, :iso
	
	def name
		"#{nombre}"
	end
end
