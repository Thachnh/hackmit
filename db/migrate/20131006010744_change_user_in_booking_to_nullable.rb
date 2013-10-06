class ChangeUserInBookingToNullable < ActiveRecord::Migration
  def change
  	change_column :bookings, :user_id, :integer, :null => true
  end
end
