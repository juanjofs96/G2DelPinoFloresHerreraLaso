# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profesor.create!([{cedula: '0954252526', nombres: 'Alan Gabriel', apellidos: 'Avendano Diaz'},
{cedula: '0954252517', nombres: 'Ginger Malena', apellidos: 'Garcia Suarez'},
{cedula: '0954252896', nombres: 'Eduardo Miguel', apellidos: 'Cruz Almeida'},
{cedula: '0954241415', nombres: 'Rodrigo Hernan', apellidos: 'Povea Perez'},
{cedula: '0954254848', nombres: 'Sergio Andres', apellidos: 'Flores Arce'}
])

Materium.create!([{codigo: 'MAT001', nombre: 'matematicas', descripcion:'clases prepolitecnico'},
{codigo: 'FIS001', nombre: 'fisica', descripcion:'clases prepolitecnico'},
{codigo: 'QUI001', nombre: 'quimica', descripcion:'clases prepolitecnico'},
{codigo: 'MAT002', nombre: 'matematicas', descripcion:'clases ser bachiller'},
{codigo: 'FIS002', nombre: 'fisica', descripcion:'clases ser bachiller'},
{codigo: 'QUI002', nombre: 'quimica', descripcion:'clases ser bachiller'}])

Curso.create!([{id_curso: 'MATUTINO1', nombre: 'prepolitecnico1', duracion:30, materium_id:'MAT001', profesor_id:'0954252526'},
{id_curso: 'MATUTINO2', nombre: 'prepolitecnico2', duracion:30, materium_id:'FIS002', profesor_id:'0954252896'},
{id_curso: 'MATUTINO3', nombre: 'serbachiller1', duracion:30, materium_id:'QUI001', profesor_id:'0954252526'},
{id_curso: 'VESPERTINO1', nombre: 'prepolitecnico3', duracion:30, materium_id:'FIS002', profesor_id:'0954241415'},
{id_curso: 'VESPERTINO2', nombre: 'serbachiller2', duracion:30, materium_id:'MAT001', profesor_id:'0954252526'},
{id_curso: 'VESPERTINO3', nombre: 'prepolitecnico4', duracion:30, materium_id:'QUI001', profesor_id:'0954241415'}])

Calificacion.create!([{estudiante_id:"922657570",curso_id:"MATUTINO1",nota: 10}])