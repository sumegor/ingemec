# require 'gettext/rails'

module ActionView
	  class Base
	    delegate :file_exists?, :to => :finder unless respond_to?(:file_exists?)
	  end
	end
	
# class CGI
	# module QueryExtension
		# alias index_without_fix :[]
		# def [] (key)
			# return nil unless @params[key]
			# index_without_fix(key)
		# end
	# end
# end