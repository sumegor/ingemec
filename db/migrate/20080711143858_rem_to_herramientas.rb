class RemToHerramientas < ActiveRecord::Migration
  def self.up
		remove_column :herramientas, :cantidad
  end

  def self.down
		add_column :herramientas, :cantidad, :integer, :null => false
  end
end
