class ModifyObrasAndEjemplares < ActiveRecord::Migration
  def self.up
		remove_column :obras, :estado
		remove_column :ejemplares, :estado
		remove_column :ejemplares, :disponibilidad
  end

  def self.down
		add_column :obras, :estado
		add_column :ejemplares, :estado
		add_column :ejemplares, :disponibilidad
  end
end
