module ActiveScaffold::Config
  class Delete < Base
    self.crud_type = :destroy

    def initialize(core_config)
      @core = core_config

      # start with the ActionLink defined globally
      @link = self.class.link.clone
    end

    # global level configuration
    # --------------------------

    # the ActionLink for this action
    cattr_accessor :link
    @@link = ActiveScaffold::DataStructures::ActionLink.new('destroy', :label => 'Eliminar', :type => :record, :confirm => '¿Est&aacute; seguro de eliminar el resgitro actual?', :method => :delete, :position => false, :security_method => :delete_authorized?)

    # instance-level configuration
    # ----------------------------

    # the ActionLink for this action
    attr_accessor :link
  end
end