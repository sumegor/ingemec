class Usuario < ActiveRecord::Base
	
	attr_accessor :password, :password_confirmation
  
	belongs_to :tipo_doc
	belongs_to :ciudad
	belongs_to :perfil
	
	validates_presence_of	:nombres, :apellidos, :documento, :direccion, :telefono_1,
												:movil, :email, :username#, :password, :password_confirmation
												
	validates_uniqueness_of :username
	
	#FOR ACTIVESCAFFOLD
	def name
    	"#{nombres} #{apellidos}"
  	end
	
	# EncriptaciOn password
	def before_save
		#puts "++++++++++++++ En before_save -> password:  #{password}"
		unless password.blank?
			salt = [Array.new(6){rand(256).chr}.join].pack("m").chomp
			self.password_salt, self.password_hash = 	salt, Digest::SHA256.hexdigest(password + salt)
		end
	end
	
	#Valida coincidencia de password y password_confirmation
	def validate
		#puts "--- ENTRANDO A VALIDATE----- password, password_confirmation: #{password} - #{password_confirmation}"
		errors.add('contrase&ntilde;a', 'y confirmaci&oacute;n no coinciden') unless password_confirmation == password
	end
	
	#Valida presencia de de password y password_confirmation cuando se crea el usuario
	def validate_on_create
		#puts "--- ENTRANDO A VALIDATE ON CREATE ----- password, password_confirmation : #{self.password},  #{password_confirmation}" 
		errors.add('contrase&ntilde;a','no puede estar en blanco') unless !self.password.blank?
		errors.add('confirmaci&oacute;n','no puede estar en blanco') unless !self.password_confirmation.blank?					
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
