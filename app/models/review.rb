class Review < ActiveRecord::Base
  attr_accessible :description, :rank, :title, :tour_id, :user_id
  belongs_to :tour 
  belongs_to :user
end
