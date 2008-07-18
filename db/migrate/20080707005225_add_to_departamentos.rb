class AddToDepartamentos < ActiveRecord::Migration
  def self.up
		add_column :departamentos, :codigo, :string, :null => false
  end

  def self.down
		remove_column :departamentos, :codigo
  end
end
