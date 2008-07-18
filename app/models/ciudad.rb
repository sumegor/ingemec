class Ciudad < ActiveRecord::Base
	belongs_to :departamento
	
	validates_presence_of :nombre
	
	def name
    "#{nombre}"
  end
end
