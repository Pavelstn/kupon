class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.integer :region_id
      t.boolean :is_avtive
      t.boolean :is_delete
      t.string :who_delete

      t.timestamps
    end
  end
end
