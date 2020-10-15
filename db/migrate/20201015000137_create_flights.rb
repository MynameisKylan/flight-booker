class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport, index: true, foreign_key: true
      t.integer :destination_airport, index: true, foreign_key: true
      t.date :start_date
      t.integer :duration

      t.timestamps
    end
  end
end
