class AddParkIdToCampgrounds < ActiveRecord::Migration[5.0]
  def change
    add_reference :campgrounds, :park, foreign_key: true
  end
end
