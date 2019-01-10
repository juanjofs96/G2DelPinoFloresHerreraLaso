class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes, :id => false, :primary_key => :cedula do |t|
      t.string :cedula
      t.string :nombres
      t.string :apellidos
      t.string :fecha_nac
      t.string :domicilio

      t.timestamps
    end
  end
end
