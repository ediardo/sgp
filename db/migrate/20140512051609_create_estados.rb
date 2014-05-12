class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nota
      t.references :tipo_estado, index: true
      t.references :pedido, index: true

      t.timestamps
    end
  end
end
