class CreateAkupons < ActiveRecord::Migration
  def change
    create_table :akupons do |t|
      t.integer :promotion_id
      t.integer :user_id
      t.date :purchase
      t.date :use
      t.string :unique_code
      t.boolean :is_delete
      t.boolean :is_canceled

      t.timestamps
    end
  end
end
