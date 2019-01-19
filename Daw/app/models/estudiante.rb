class Estudiante < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  self.primary_key = 'cedula'
  has_many :facturas
  has_many :inscripcions
  has_many :calificacions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
