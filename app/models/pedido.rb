class Pedido < ActiveRecord::Base
  belongs_to :cliente, counter_cache: true 
  has_many :estados, :validate => false
  validates :num_pedido, uniqueness: true, presence: true
  
  validates_presence_of :cliente_id
end
