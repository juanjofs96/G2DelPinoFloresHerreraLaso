class CreateMateria < ActiveRecord::Migration[5.1]
  def change
    create_table :materia, :id => false, :primary_key => :codigo do |t|
      t.string :codigo
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
