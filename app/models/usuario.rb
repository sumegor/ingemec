class Usuario < ActiveRecord::Base
	
	attr_accessor :password, :password_confirmation
  
	belongs_to :tipo_doc
	belongs_to :ciudad
	belongs_to :perfil
	
	validates_presence_of	:nombres, :apellidos, :documento, :direccion, :telefono_1,
												:movil, :email, :username, :password, :password_confirmation
												
	validates_uniqueness_of :username
	
	#FOR ACTIVESCAFFOLD
	def name
    	"#{nombres} #{apellidos}"
  	end
	

	def validate
     errors.add('password', 'y confirmaci&oacute; no coinciden') \
            unless password_confirmation == password
  end
	
	def before_save
		salt = [Array.new(6){rand(256).chr}.join].pack("m").chomp
		self.password_salt, self.password_hash = salt, Digest::SHA256.hexdigest(self.username + salt)
	end

	
	def self.authenticate(username, password)
		user = Usuario.find(:first, :conditions => [' username = ?' , username])
		if user.blank? || Digest::SHA256.hexdigest(password + user.password_salt) != user.password_hash
			#raise "Nombre invalido"
			return false
		else
			return true
	  end
	end

end
