require 'rails_helper'

describe Comment, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:body) }
  end

  context "associations" do
    it { is_expected.to belong_to(:user) }
  end
end
