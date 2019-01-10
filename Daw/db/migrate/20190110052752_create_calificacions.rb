class CreateCalificacions < ActiveRecord::Migration[5.1]
  def change
    create_table :calificacions do |t|
      t.float :nota
      t.references :estudiante, foreign_key: true
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end
