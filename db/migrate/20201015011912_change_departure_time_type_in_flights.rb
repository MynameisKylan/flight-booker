class ChangeDepartureTimeTypeInFlights < ActiveRecord::Migration[6.0]
  def change
    change_column :flights, :departure_time, :datetime
  end
end
