class ScheduledTour < ActiveRecord::Base
  belongs_to :tour
  attr_accessible :end_time, :start_time, :tour_id
end
