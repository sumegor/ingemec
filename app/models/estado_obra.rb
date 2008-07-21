class EstadoObra < ActiveRecord::Base
	def name
		"#{nombre}"
	end
end
