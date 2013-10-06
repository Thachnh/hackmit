class Booking < ActiveRecord::Base
  belongs_to :scheduled_tour
  belongs_to :user
  attr_accessible :email, :first_name, :last_name, :phone, :scheduled_tour_id, :user_id, :user
end
