class AddGearListRefToTrips < ActiveRecord::Migration[5.0]
  def change
    add_reference :trips, :gear_list, foreign_key: true
  end
end
