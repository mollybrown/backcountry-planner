class AddCampgroundIdToTrips < ActiveRecord::Migration[5.0]
  def change
    add_reference :trips, :campground, foreign_key: true
  end
end
