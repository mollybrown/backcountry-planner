class CreateGearLists < ActiveRecord::Migration[5.0]
  def change
    create_table :gear_lists do |t|
      t.string :item
      t.integer :quantity
    end
  end
end
