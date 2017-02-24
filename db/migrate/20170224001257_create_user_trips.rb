class CreateUserTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :user_trips do |t|
      t.references(:user)
      t.references(:trip)

      t.timestamps null: false
    end
  end
end
