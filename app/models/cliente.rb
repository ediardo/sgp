class Cliente < ActiveRecord::Base
  validates :num_cliente, uniqueness: true
  validates :num_cliente, :nombres, :apellidos, :email, :direccion, presence: true 
  validates :nombres, :apellidos, length: {in: 2..30}
  validates :telefono, numericality: true  
end
