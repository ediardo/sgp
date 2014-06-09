class AddUpdatedByToEstados < ActiveRecord::Migration
  def change
    add_column :estados, :updated_by, :string
  end
end
