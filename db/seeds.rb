# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Venue/Band data..."
Venue.destroy_all
Band.destroy_all
Concert.destroy_all

puts "Creating Venues..."
la_venue = Venue.create(title: "The Roxy", city: "LA")
chi_venue = Venue.create(title: "Subterranean", city: "Chicago")
nyc_venue = Venue.create(title: "Terminal 5", city: "NYC")

puts "Creating Bands..."
ny_band = Band.create(name: "LCD Soundsystem", hometown: "NYC")
la_band = Band.create(name: "Muna", hometown: "LA")
chi_band = Band.create(name: "Noname", hometown: "Chicago")

puts "Creating Concerts..."
Concert.create(date: "may", venue_id: la_venue.id, band_id: chi_band.id)
Concert.create(date: "June", venue_id: chi_venue.id, band_id: ny_band.id)
Concert.create(date: "December", venue_id: nyc_venue.id, band_id: la_band.id)

puts "Seeding done!"
