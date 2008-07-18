class TipoDoc < ActiveRecord::Base
	validates_presence_of :nombre, :descripcion
	
	def name
		"#{nombre}"
	end
end
