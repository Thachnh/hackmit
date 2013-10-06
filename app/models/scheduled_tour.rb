class ScheduledTour < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :tour_id
  belongs_to :tour
end
