class ModifyNameOfPrivilegiosPerfiles < ActiveRecord::Migration
  def self.up
		rename_table :privilegios_perfiles, :perfiles_privilegios
  end

  def self.down
		rename_table :perfiles_privilegios, :privilegios_perfiles
  end
end
