class AddRegionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :region, :integer
  end
end
