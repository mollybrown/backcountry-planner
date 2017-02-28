class AddTripIdToGearLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :gear_lists, :trip, foreign_key: true
  end
end
