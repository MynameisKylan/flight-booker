class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    num_passengers = params[:num_tickets].to_i
    num_passengers.times { @booking.passengers.build }
    @flight = Flight.find(params[:flight_id])
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking
    else
      @flight = Flight.find(booking_params[:flight_id])
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
