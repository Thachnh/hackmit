FactoryGirl.define do
  factory :tour do |tour|    
    tour.name "Visit Moon"
    factory :tour_with_venues do
      after(:create) do
        create_list(:venue, :tour => tour)
      end
    end
  end
end