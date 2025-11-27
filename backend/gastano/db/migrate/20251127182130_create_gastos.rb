class CreateGastos < ActiveRecord::Migration[8.1]
  def change
    create_table :gastos do |t|
      t.string :titulo
      t.decimal :valor, precision: 10, scale: 2
      t.date :data
      t.string :categoria

      t.timestamps
    end
  end
end
