class Person
  include Mongoid::Document
  field :nombre, type: String
  field :apellido, type: String
  field :correo, type: String
  field :cedula, type: String
end
