class Tour < ActiveRecord::Base
  attr_accessible :end_time, :loc_lat, :loc_lon, :loc_name, :name, :prize, :start_time, :user_id
  belongs_to :user
end
