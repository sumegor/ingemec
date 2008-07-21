class DisponibilidadEjemplar < ActiveRecord::Base
	def name
		"#{nombre}"
	end
end
