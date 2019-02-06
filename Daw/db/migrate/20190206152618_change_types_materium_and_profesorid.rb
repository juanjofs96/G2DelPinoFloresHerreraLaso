class ChangeTypesMateriumAndProfesorid < ActiveRecord::Migration[5.1]
  def change
  	remove_index "materium_id", name: "index_cursos_on_materium_id"
  	remove_index "profesor_id", name: "index_cursos_on_profesor_id"
  	remove_column :cursos, :materium_id, :integer
  	remove_column :cursos, :profesor_id, :integer
  	add_column :cursos, :materium_id, :string
  	add_column :cursos, :profesor_id, :string
  	add_index :cursos, :materium_id
  	add_index :cursos, :profesor_id
  end
end
