class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.integer :user_id
      t.string :loc_name
      t.string :loc_lat
      t.string :loc_lon
      t.decimal :prize
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
