class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  belongs_to :destination_airport, class_name: 'Airport', foreign_key: 'destination_airport_id'
  has_many :bookings
  has_many :passengers, through: :bookings

  def self.search(params)
    Flight.includes(:departure_airport, :destination_airport).where(
      departure_airport_id: params[:departure_airport],
      destination_airport_id: params[:destination_airport],
      departure_time: params[:departure_date].to_date.all_day
    )
  end
end
