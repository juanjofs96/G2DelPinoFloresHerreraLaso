class Estudiante < ApplicationRecord
    self.primary_key = 'cedula'
    has_many :facturas
    has_many :inscripcions
    has_many :calificacions
end
