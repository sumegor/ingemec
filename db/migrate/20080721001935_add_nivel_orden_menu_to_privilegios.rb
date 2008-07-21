class AddNivelOrdenMenuToPrivilegios < ActiveRecord::Migration
  def self.up
		add_column :privilegios, :nivel_menu, :integer,  :limit => 2, :default => 2, :null => false
		add_column :privilegios, :orden_menu, :integer,  :limit => 2, :null => false
  end

  def self.down
		remove_column :privilegios, :nivel_menu
		remove_column :privilegios, :orden_menu
  end
end
