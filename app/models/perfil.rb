class Perfil < ActiveRecord::Base
	has_and_belongs_to_many :privilegios
		
	def name
		"#{nombre}"
	end
end
