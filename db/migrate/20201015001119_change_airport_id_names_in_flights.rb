class ChangeAirportIdNamesInFlights < ActiveRecord::Migration[6.0]
  def change
    rename_column :flights, :departure_airport, :departure_airport_id
    rename_column :flights, :destination_airport, :destination_airport_id
  end
end
