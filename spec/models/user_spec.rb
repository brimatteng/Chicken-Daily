require 'rails_helper'

RSpec.describe User, type: :model do
  it "throws error when creating user if user not valid" do
    invalid_attrs = {username: nil, email: nil}
    user = build(:user, invalid_attrs)
    expect(user.save).to eq false
  end
end
