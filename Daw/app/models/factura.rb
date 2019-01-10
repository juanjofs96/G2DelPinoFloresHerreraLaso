class Factura < ApplicationRecord
  belongs_to :pago
  belongs_to :estudiante
end
