class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :flight_id, null: false, foreign_key: true
      t.references :passenger_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
