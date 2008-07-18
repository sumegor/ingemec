class ModifyPerfilesAndPrivilegios < ActiveRecord::Migration
  def self.up
		change_column :perfiles, :descripcion, :text
		change_column :privilegios, :descripcion, :text
  end

  def self.down
		change_column :perfiles, :descripcion, :string
		change_column :privilegios, :descripcion, :string
  end
end
