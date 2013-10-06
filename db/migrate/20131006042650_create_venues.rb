class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :tour_id
      t.string :name
      t.float :lat
      t.float :lon
      t.string :image_url

      t.timestamps
    end
  end
end
