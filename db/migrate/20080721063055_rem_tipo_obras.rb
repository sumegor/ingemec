class RemTipoObras < ActiveRecord::Migration
  def self.up
		remove_column :obras, :tipo_obra_id
  end

  def self.down
		add_column :obras, :tipo_obra_id, :integer, :null => true
  end
end
