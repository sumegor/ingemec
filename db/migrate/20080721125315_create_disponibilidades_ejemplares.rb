class CreateDisponibilidadesEjemplares < ActiveRecord::Migration
  def self.up
    create_table :disponibilidades_ejemplares do |t|
      t.string	:nombre, :null => false
      t.text 	:descripcion, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :disponibilidades_ejemplares
  end
end
