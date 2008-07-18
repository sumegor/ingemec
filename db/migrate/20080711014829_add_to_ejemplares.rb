class AddToEjemplares < ActiveRecord::Migration
  def self.up
		add_column :ejemplares, :codigo, :string, :limit => 40, :null => false
  end

  def self.down
		remove_column :ejemplares, :codigo
  end
end
