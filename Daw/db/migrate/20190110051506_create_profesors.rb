class CreateProfesors < ActiveRecord::Migration[5.1]
  def change
    create_table :profesors do |t|
      t.string :cedula
      t.string :nombres
      t.string :apellidos

      t.timestamps
    end
  end
end
