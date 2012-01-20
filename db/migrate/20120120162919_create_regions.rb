class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name_region
      t.text :description
      t.boolean :is_active
      t.boolean :is_delete
      t.string :who_delete

      t.timestamps
    end
  end
end
