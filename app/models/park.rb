class Park < ApplicationRecord
  validates :rec_area_number, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true

  validates_uniqueness_of :rec_area_number

  # belongs_to :trip
end
