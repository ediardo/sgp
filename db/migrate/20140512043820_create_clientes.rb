class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :num_cliente
      t.string :nombres
      t.string :apellidos
      t.string :telefono
      t.string :direccion
      t.string :email

      t.timestamps
    end
  end
end
