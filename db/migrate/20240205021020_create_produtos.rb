class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :name
      t.decimal :price
      t.integer :quantidade

      t.timestamps
    end
  end
end
