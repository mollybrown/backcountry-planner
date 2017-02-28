class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.integer :rec_area_number
      t.string  :name
      t.text    :description
      t.string  :image_url
    end
  end
end
