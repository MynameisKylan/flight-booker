class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.order(:departure_time).pluck('distinct date(departure_time)')
  end
end
