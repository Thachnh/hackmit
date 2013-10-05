class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :scheduled_tour
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
    add_index :bookings, :scheduled_tour_id
    add_index :bookings, :user_id
  end
end
