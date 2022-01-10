class CreateImcCalculations < ActiveRecord::Migration[6.1]
  def change
    create_table :imc_calculations do |t|
      t.references :imc, null: false, foreign_key: true
      t.float :weight
      t.float :height
      t.float :imc
      t.string :description
      t.integer :obesity

      t.timestamps
    end
  end
end
