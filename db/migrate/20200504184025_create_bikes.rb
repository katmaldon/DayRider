class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :model
      t.integer :size
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
