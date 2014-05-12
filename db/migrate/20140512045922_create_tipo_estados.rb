class CreateTipoEstados < ActiveRecord::Migration
  def change
    create_table :tipo_estados do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
