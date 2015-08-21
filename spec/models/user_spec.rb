require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @uber_admin = User.find_or_create_by(admin: true) do |u|
      u.name = "Administrator"
      u.email = "admin@example.com"
      u.password = "Password"
      u.password_confirmation = "Password"
    end
  end

  it "can add a regular user" do
    user = FactoryGirl.create(:user)
    expect(user).to be_persisted
  end

end
