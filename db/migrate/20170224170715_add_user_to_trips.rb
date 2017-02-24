class AddUserToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :leader_id, :integer
    add_foreign_key :trips, :users, column: :leader_id
  end
end
