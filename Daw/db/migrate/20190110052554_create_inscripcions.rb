class CreateInscripcions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscripcions do |t|
      t.references :estudiante, foreign_key: true
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end
