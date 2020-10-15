class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.order(:departure_time).pluck('distinct date(departure_time)')

    @search_results = Flight.search(search_params) if params[:search]
  end

  private

  def search_params
    params.require(:search).permit(:departure_airport, :destination_airport, :num_tickets, :departure_date)
  end
end
