class Pedido < ActiveRecord::Base
  belongs_to :cliente
  validates :num_pedido, presence: true, length: {in: 1..10}
  validates :cliente_id, presence: true
end
