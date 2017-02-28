class CreateCampground < ActiveRecord::Migration[5.0]
  def change
    create_table :campgrounds do |t|
      t.string  :name
      t.text    :description
      t.string  :image_url
      t.integer :facility_id
    end
  end
end
