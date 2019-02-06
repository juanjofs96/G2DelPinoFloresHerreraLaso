class Profesor < ApplicationRecord
    self.primary_key = "cedula"
    has_many :cursos
end
