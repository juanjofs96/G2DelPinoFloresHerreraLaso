class Materium < ApplicationRecord
    self.primary_key = 'codigo'
    has_many :cursos
end
