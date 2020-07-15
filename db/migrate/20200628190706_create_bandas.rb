class CreateBandas < ActiveRecord::Migration[6.0]
  def change
    create_table :bandas do |t|
      t.string :nome
      t.text :descricao
      t.integer :quantidade
      t.decimal :preco

      t.timestamps
    end
  end
end
