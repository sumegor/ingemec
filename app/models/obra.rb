class Obra < ActiveRecord::Base
	belongs_to :ciudad
	belongs_to :cliente
	belongs_to :usuario#, conditions => 'perfil_id = 4' #Ingeniero de Obra
	
	
	
	
	
	def name
		"#{nombre}"
	end
	
end
