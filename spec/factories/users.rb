FactoryGirl.define do
  factory :user do |user|    
    user.email  "rspec@example.com"
    user.password  "password"
    user.password_confirmation  "password"
    user.first_name "First"
    user.last_name "Last"
  end
end