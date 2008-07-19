# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
	# before_filter	:check_authentication,
								# :check_authorization,
								# :except => [:signin_form, :signin]
	
	# def check_authentication
		# unless session[:user]
			# session[:intended_action] = action_name
			# redirect_to :controller => "admin", :action => "signin_form"
			# return false
		# end
	# end
	
	# def check_authorization
		# user = Usuario.find(session[:user])
		# unless user.perfil.privilegios.detect{|right|
			# right.action == action_name && right.controller == controller_name
			# }
			# flash[:notice] = "Usted no est&aacute; autorizado para ver la p&aacute;gina solicitada"
			# request.env["HTTP_REFERER"] ? (redirect_to :back) : (redirect_to home_url)
			# return false
		# end
	# end
	
	helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '3178fd9c38a168f819ec97c65186d246'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
	
	ActiveScaffold.set_defaults do |config| 
    config.ignore_columns.add [:created_at, :updated_at]
  end
	
	require 'gettext/rails'
	init_gettext "sgh-copia"
  #require "localize_active_scaffold"
	
end