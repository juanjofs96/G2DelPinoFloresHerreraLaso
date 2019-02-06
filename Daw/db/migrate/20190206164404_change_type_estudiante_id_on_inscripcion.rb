class ChangeTypeEstudianteIdOnInscripcion < ActiveRecord::Migration[5.1]
  def change
  	remove_index :estudiante_id, name: "index_inscripcions_on_estudiante_id"
  	remove_index :curso_id, name: "index_inscripcions_on_curso_id"

  	remove_column :inscripcions, :estudiante_id, :integer
  	remove_column :inscripcions, :curso_id, :integer

  	add_column :inscripcions, :estudiante_id, :string
  	add_column :inscripcions, :curso_id, :string

  	add_index :inscripcions, :curso_id
  	add_index :inscripcions, :estudiante_id
  end
end
