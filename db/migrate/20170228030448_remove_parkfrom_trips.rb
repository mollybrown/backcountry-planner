class RemoveParkfromTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :national_park
  end
end
