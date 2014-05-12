class Estado < ActiveRecord::Base
  belongs_to :tipo_estado
  belongs_to :pedido
end
