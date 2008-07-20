class AddMenuBooleanToPrivilegios < ActiveRecord::Migration
  def self.up
		add_column :privilegios, :visible_menu, :boolean, :null => false
  end

  def self.down
		remove_column :privilegios, :visible_menu
  end
end
