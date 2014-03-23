class Tour < ActiveRecord::Base
  attr_accessible :end_time, :loc_lat, :loc_lon, :loc_name, :name, :prize, :start_time, :user_id, :description, :tag_list
  has_many :scheduled_tours
  belongs_to :user
  has_many :scheduled_tour
  has_many :venues
  has_many :reviews, :dependent => :destroy
  accepts_nested_attributes_for :venues
  validates :name, :presence => true
  acts_as_taggable
end
