class CreateSpot < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :description
      t.text :additional_info
      t.integer :user_id
      t.timestamps
    end
  end
end
