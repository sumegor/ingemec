class Herramienta < ActiveRecord::Base
	has_many 	:ejemplares,
						:dependent => :delete_all
	
	validates_presence_of :referencia, :nombre, :descripcion
	
	#ACTIVESCAFFOLD
	def name
		"#{nombre}"
	end
	
	def cantidad
		self.ejemplares.count
	end
end
