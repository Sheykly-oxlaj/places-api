# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

place = Place.new(name: "Griffith Observatory", adress: "2800 E. Observatory Road")
place.save

place = Place.new(name: "The Getty Center", adress: "1200 Getty Center Drive")
place.save

place = Place.new(name: "Santa Monica Pier and Beach", adress: "200 Santa Monica Pier")
place.save

place = Place.new(name: "TLC Chinese Theater", adress: "6925 Hollywood Blvd.")
place.save

place = Place.new(name: "Zuma Beach", adress: "6925 Hollywood Blvd.")
place.save

place = Place.new(name: "The Original Farmers Market and The Grove", adress: "6925 Hollywood Blvd.")
place.save

place = Place.new(name: "Los Angeles County Museum of Art", adress: "5905 Wilshire Blvd.")
place.save

place = Place.new(name: "The Broad", adress: "221 S. Grand Ave.")
place.save

place = Place.new(name: "Runyon Canyon Park", adress: "2000 N. Fuller Ave.")
place.save

place = Place.new(name: "Paramount Pictures Studios", adress: "5515 Melrose Ave.")
place.save

place = Place.new(name: "Rodeo Drive", adress: "Rodeo Drive")
place.save

place = Place.new(name: "Hollywood Bowl", adress: "2301 Highland Ave.")
place.save

place = Place.new(name: "Venice Beach", adress: " 1800 Ocean Front Walk")
place.save
