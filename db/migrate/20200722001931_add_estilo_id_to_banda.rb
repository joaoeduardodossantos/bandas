class AddEstiloIdToBanda < ActiveRecord::Migration[6.0]
  def change
    add_column :bandas, :estilo_id, :integer
  end
end
