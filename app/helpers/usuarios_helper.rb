module UsuariosHelper
	def password_form_column(record, input_name)
		password_field :record, :password, :name => input_name
		#password_field_tag input_name, record.password
  end 
	
	def password_confirmation_form_column(record, input_name)
		password_field :record, :password_confirmation, :name => input_name
		#password_field_tag input_name, record.password_confirmation
	end
end

