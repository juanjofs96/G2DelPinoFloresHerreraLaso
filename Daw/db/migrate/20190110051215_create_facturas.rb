class CreateFacturas < ActiveRecord::Migration[5.1]
  def change
    create_table :facturas do |t|
      t.string :descripcion
      t.string :fecha_pago
      t.references :pago, foreign_key: true
      t.references :estudiante, foreign_key: true

      t.timestamps
    end
  end
end
