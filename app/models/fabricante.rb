class Fabricante < ActiveRecord::Base
	validates_presence_of :nombre
	
	def name
		"#{nombre}"
	end
end
