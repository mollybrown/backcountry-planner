class Trip < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  has_many :user_trips
  has_many :users, through: :user_trips
  has_one  :gear_list
  has_one  :campground
end
