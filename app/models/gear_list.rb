class GearList < ApplicationRecord
  validates :item, presence: true
  validates :quantity, presence: true

  validates_uniqueness_of :item

  belongs_to :trip
end
