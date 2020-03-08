require 'rails_helper'

RSpec.describe Checkin, type: :model do
  it "throws error when creating checkin if checkin not valid" do
    invalid_attrs = {rating: nil, date: nil}
    checkin = build(:checkin, invalid_attrs)
    expect(checkin.save).to eq false
  end
end
