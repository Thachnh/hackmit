FactoryGirl.define do
  factory :venue do |venue|    
    venue.name "Test Venue Name"
    venue.lat nil
    venue.lon nil
    association :tour
  end
end