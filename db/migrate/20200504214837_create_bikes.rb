class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :module
      t.integer :size
      t.string :bike_type

      t.timestamps

    end
  end
end
