class Departamento < ActiveRecord::Base
	belongs_to :pais
	
	validates_presence_of :nombre
	
	def name
		"#{nombre}"
	end
end
