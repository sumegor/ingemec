class ModifyObras < ActiveRecord::Migration
  def self.up
		rename_column :obras, :usaurio_id, :usuario_id
  end

  def self.down
		rename_column :obras, :usuario_id, :usaurio_id
  end
end
