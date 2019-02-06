class CreateCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :id_curso
      t.string :nombre
      t.integer :duracion
      t.references :materium, foreign_key: true
      t.references :profesor, foreign_key: true

      t.timestamps
    end
  end
end
