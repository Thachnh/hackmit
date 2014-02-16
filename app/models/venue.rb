class Venue < ActiveRecord::Base
  attr_accessible :image_url, :lat, :lon, :name, :tour_id
  belongs_to :tour, autosave: true
  validates :name , :presence => true
end
