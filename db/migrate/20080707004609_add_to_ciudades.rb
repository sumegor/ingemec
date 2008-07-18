class AddToCiudades < ActiveRecord::Migration
  def self.up
		add_column :ciudades, :codigo, :string, :null => false
		add_column :ciudades, :codigo_departamento, :string, :null => false
  end

  def self.down
		remove_column :ciudades, :codigo
		remove_column :ciudades, :codigo_departamento
  end
end
