class CreateScheduledTours < ActiveRecord::Migration
  def change
    create_table :scheduled_tours do |t|
      t.references :tour
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
    add_index :scheduled_tours, :tour_id
  end
end
