require 'rails_helper'

describe Trip, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
    it { is_expected.to validate_presence_of(:campground) }
  end

  context "associations" do
    it { is_expected.to have_many(:user_trips) }
    it { is_expected.to have_many(:users) }
    it { is_expected.to have_one(:gear_list) }
  end

end
