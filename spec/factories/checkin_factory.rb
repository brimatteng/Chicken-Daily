FactoryBot.define do
  factory :checkin do
    rating {1}
    date { Date.today }
  end
end
