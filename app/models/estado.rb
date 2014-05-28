class Estado < ActiveRecord::Base
  belongs_to :tipo_estado
  belongs_to :pedido
  validates :pedido_id, presence: true 
  validates :tipo_estado_id, presence: true

end
