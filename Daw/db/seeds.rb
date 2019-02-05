# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Calificacion.create([{nota: 100, estudiante_id: '922657571', curso_id: 'prepolitecnico'}])
Materium.create!(codigo: '001', nombre: 'Matematicas', descripcion: 'conceptos fundamentales de matematicas')
Profesor.create!(cedula: '931411438', nombres: 'Joaquin',apellidos: 'Piguave')
#Curso.create!(id_curso: 'sb', nombre: 'Ser bachiller', duracion: '3 meses', materium_id: '001', profesor_id: '931411438')
