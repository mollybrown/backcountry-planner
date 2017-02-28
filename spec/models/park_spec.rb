require 'rails_helper'

describe Park, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:rec_area_number) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:image_url) }

    it { is_expected.to validate_uniqueness_of(:rec_area_number) }
  end

  context "associations" do
    xit { is_expected.to belong_to(:trip) }
  end
end
