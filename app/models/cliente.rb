class Cliente < ActiveRecord::Base
	
	belongs_to :ciudad

		validates_presence_of :nombre, :direccion, :telefono_1,
													:fax, :email	
	
	def name
    "#{nombre}"
  end
end
