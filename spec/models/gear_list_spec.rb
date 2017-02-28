require 'rails_helper'

describe GearList, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:item) }
    it { is_expected.to validate_presence_of(:quantity) }

    it { is_expected.to validate_uniqueness_of(:item) }
  end

  context "associations" do
    it { is_expected.to belong_to(:trip) }
  end
end
