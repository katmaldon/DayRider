class AddPriceToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :price, :integer
  end
end
