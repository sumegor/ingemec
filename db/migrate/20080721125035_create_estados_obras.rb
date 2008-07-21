class CreateEstadosObras < ActiveRecord::Migration
  def self.up
    create_table :estados_obras do |t|  #Estado obra: Sin Iniciar, En Curso, Terminada
      t.string	:nombre, :null => false
      t.text 	:descripcion, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :estados_obras
  end
end
