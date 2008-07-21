class EstadoEjemplar < ActiveRecord::Base
	def name
		"#{nombre}"
	end
end
