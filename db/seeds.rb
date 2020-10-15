# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airports = [{ code: 'SFO' }, { code: 'NYC' }]
Airport.create(airports)

sfo, nyc = Airport.first, Airport.last
50.times do
  sfo.departing_flights.create(
    destination_airport_id: nyc.id,
    departure_time: rand(3.months).seconds.from_now,
    duration: 325
  )
end

50.times do
  nyc.departing_flights.create(
    destination_airport_id: sfo.id,
    departure_time: rand(3.months).seconds.from_now,
    duration: 325
  )
end
