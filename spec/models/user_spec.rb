require 'rails_helper'

describe User, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:provider) }
    it { is_expected.to validate_presence_of(:uid) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:image) }
    it { is_expected.to validate_presence_of(:oauth_token) }
    it { is_expected.to validate_presence_of(:oauth_expires_at) }

    it { is_expected.to validate_uniqueness_of(:uid) }
  end

  context "associations" do
    it { is_expected.to have_many(:user_trips) }
    it { is_expected.to have_many(:trips) }
    it { is_expected.to have_many(:comments) }
  end

end
