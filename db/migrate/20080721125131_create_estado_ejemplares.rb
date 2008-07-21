class CreateEstadoEjemplares < ActiveRecord::Migration
  def self.up
    create_table :estado_ejemplares do |t| #Se refiere a l acondición del ejmeplar: Bueno, Malo, Reparando
      t.string	:nombre, :null => false
      t.text 	:descripcion, :null => false
			
      t.timestamps
    end
  end

  def self.down
    drop_table :estado_ejemplares
  end
end
