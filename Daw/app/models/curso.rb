class Curso < ApplicationRecord
  self.primary_key = "id_curso"
  has_many :calificacions
  has_many :inscripcions
  belongs_to :materium
  belongs_to :profesor
end
