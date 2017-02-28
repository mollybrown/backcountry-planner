require 'rails_helper'

describe UserTrip, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:trip_id) }
  end

  context "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:trip) }
  end
end
