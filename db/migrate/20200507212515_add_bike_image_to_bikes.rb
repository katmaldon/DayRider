class AddBikeImageToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :bike_img, :string
  end
end
