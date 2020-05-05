class AddAvailabilityStatusToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :availability?, :boolean
  end
end
