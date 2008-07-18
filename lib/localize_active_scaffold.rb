#  localize_active_scaffold.rb
#  Created by ofi on 2007-06-24.
#  Published under MIT license (like RoR).
#
module LocalizeActiveScaffold

  include GetText
	require 'gettext/utils'
	
  # [09-12-07] changed to use the ActionController textdomainname and removed setting single locale
  #bindtextdomain(ActionController::Base.textdomainname, :path => File.join(RAILS_ROOT, "locale"))
	bindtextdomain("sgh-copia", :path => File.join(RAILS_ROOT, "locale"))
	
  GT_LOG = Logger.new("#{RAILS_ROOT}/log/gettext.log")
  GT_LOG.level = Logger::WARN
  GT_LOG.error "**** Started log at #{Time.new.to_s}" 

  # [06-27-07] no varargs parameter anymore
  # [07-12-07]:(anonymous) use GetText.s_ when column name is specified
  def self.translate(string_to_localize)
    if string_to_localize.include?('|')
      res = s_(string_to_localize)
      GT_LOG.debug "translate() called for: #{string_to_localize} => #{res}" 
      if GT_LOG.warn? and (res == string_to_localize.split(/\|/).pop)
        GT_LOG.warn "No translation for <#{string_to_localize}>!" 
      end
    else
      res = _(string_to_localize)
      GT_LOG.debug "translate() called for: #{string_to_localize} => #{res}" 
      if GT_LOG.warn? and (res == string_to_localize)
        GT_LOG.warn "No translation for <#{string_to_localize}>!" 
      end
    end
    return res
  end

  # [06-27-07] no varargs parameter anymore
  def self.dont_translate(string_to_localize)
    N_(string_to_localize)
  end

private

  # The following strings contained in the ActiveScaffold plugin in various
  # files serve as a proxy for rgettext (driven by the rake task updatepo)
  # for making them appear in the po files.
  def dummy
    N_('Open')
    N_('Close')
    N_('close')
    N_('Edit')
    N_('Delete')
    N_('Show')
    N_('Search')
    N_('Search Terms')
    N_('No Entries')
    N_('Found')
    N_('Create New')
    N_('Are you sure?')
    N_('Cancel')
  end

end

# The following methods delegate ActiveScaffold's call to as_() as well as 
# gettext's calls to _() to the above translate() method:
class Object

  # [06-28-07]: enforce single argument signature 
  def _(*args)
    LocalizeActiveScaffold.translate(args[0].to_s)
  end

  # [06-28-07]: enforce single argument signature 
  def N_(*args)
    LocalizeActiveScaffold.dont_translate(args[0].to_s)
  end

  # coupling ActiveScaffold to gettext by declaring this
  # method, which will be called by AS:
  # [06-27-07]: now calling the insertion operator on the
  # varargs parameters (if any). CAVEAT: Too few parameters
  # will deliver nil as the method's result!
  # [06-28-07]: less is more: removed redundant cond. expr.
  def as_(loc_string, *args)
    LocalizeActiveScaffold.translate(loc_string) % args
  end

end

# following method replaces column labels into 'ClassName|Attribute name' forms.
# gettext returns column name as that's form.
# [07-12-07]:(anonymous)
module ActiveScaffold::DataStructures
  class Column
    def initialize_with_gettext(name, active_record_class)
      initialize_without_gettext(name, active_record_class)
      self.label = active_record_class.name.demodulize + '|' +  self.label.humanize
    end
    alias_method_chain :initialize, :gettext
  end
end