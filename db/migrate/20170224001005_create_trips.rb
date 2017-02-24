class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string   :title
      t.text     :description
      t.datetime :start_date
      t.datetime :end_date
      t.string   :campground
      t.string   :national_park

      t.timestamps null: false
    end
  end
end
