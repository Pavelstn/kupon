class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.integer :region_id
      t.integer :partner_id
      t.integer :category_id
      t.integer :user_id
      t.boolean :is_active
      t.boolean :is_delete, :default => false
      t.string :who_delete
      t.boolean :on_top
      t.date :start_action
      t.date :stop_action
      t.string :title
      t.text :short_description
      t.text :description
      t.text :terms
      t.float :costs
      t.integer :volume
      t.integer :left

      t.timestamps
    end
  end
end
