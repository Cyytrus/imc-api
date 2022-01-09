class CreateImcs < ActiveRecord::Migration[6.1]
  def change
    create_table :imcs do |t|
      t.string :name
      t.integer :age
      t.float :height
      t.float :weight
      t.float :imc
      t.string :classification
      t.integer :obesity

      t.timestamps
    end
  end
end
