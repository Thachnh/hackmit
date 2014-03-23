class AddUserAndTourToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :user_id, :integer
    add_index :reviews, :user_id
    add_column :reviews, :tour_id, :integer
    add_index :reviews, :tour_id
  end
end
