class AddCreatedByToEstados < ActiveRecord::Migration
  def change
    add_column :estados, :created_by, :string
  end
end
