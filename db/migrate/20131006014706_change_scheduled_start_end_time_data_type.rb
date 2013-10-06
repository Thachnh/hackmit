class ChangeScheduledStartEndTimeDataType < ActiveRecord::Migration
  def change
  	change_column :scheduled_tours, :start_time, :datetime
  	change_column :scheduled_tours, :end_time, :datetime
  end
end
