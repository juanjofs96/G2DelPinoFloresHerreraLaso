class FixCalificacionTable < ActiveRecord::Migration[5.1]
  def change
  	remove_index :estudiante_id, name: "index_calificacions_on_estudiante_id"
  	remove_index :curso_id, name: "index_calificacions_on_curso_id"

  	remove_column :calificacions, :estudiante_id, :integer
  	remove_column :calificacions, :curso_id, :integer

  	add_column :calificacions, :estudiante_id, :string
  	add_column :calificacions, :curso_id, :string

  	add_index :calificacions, :curso_id
  	add_index :calificacions, :estudiante_id
  end
end
