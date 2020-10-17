class PassengerMailer < ApplicationMailer
  default from: 'Flights@Odin.com'

  def booking_email
    @passenger = params[:passenger]
    @url = "http://localhost:3000/bookings/#{params[:booking].id}"
    mail(to: @passenger.email, subject: 'Your Flight is Booked')
  end
end
