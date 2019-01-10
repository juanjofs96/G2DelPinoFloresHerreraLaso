class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.string :tipo
      t.integer :cantidad

      t.timestamps
    end
  end
end
