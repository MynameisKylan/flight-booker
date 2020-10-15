class ChangeDateTypeInFlights < ActiveRecord::Migration[6.0]
  def change
    change_column :flights, :start_date, :datetime
    rename_column :flights, :start_date, :departure_time
  end
end
