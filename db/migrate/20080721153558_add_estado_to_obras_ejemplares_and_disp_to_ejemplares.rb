class AddEstadoToObrasEjemplaresAndDispToEjemplares < ActiveRecord::Migration
  def self.up
		add_column :obras, :estado_obra_id, :integer, :default => 1,:null => false
		add_column :ejemplares, :estado_ejemplar_id, :integer, :default => 1, :null => false
		add_column :ejemplares, :disponibilidad_ejemplar_id, :default => 1, :integer, :null => false
  end

  def self.down
		remove_column :obras, :estado_obra_id
		remove_column :ejemplares, :estado_ejemplar_id
		remove_column :ejemplares, :disponibilidad_ejemplar_id
  end
end
