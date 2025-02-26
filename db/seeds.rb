# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Flat.destroy_all

flats = [
  {
    name: 'Light & Spacious Flat in London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Charming Studio in Montmartre',
    address: '18 Rue des Abbesses, Paris 75018',
    description: 'Cozy studio in the heart of Montmartre, perfect for couples or solo travelers. Fully equipped with a kitchenette and a stunning view of the Sacré-Cœur.',
    price_per_night: 95,
    number_of_guests: 2
  },
  {
    name: 'Modern Loft in Barcelona',
    address: '25 Carrer de Casanova, Barcelona 08011',
    description: 'Stylish loft with industrial design, featuring an open-plan living area, fully equipped kitchen, and a rooftop terrace with panoramic city views.',
    price_per_night: 120,
    number_of_guests: 4
  },
  {
    name: 'Seaside Retreat in Nice',
    address: '3 Promenade des Anglais, Nice 06000',
    description: 'Bright and airy apartment with stunning sea views. Perfect for a relaxing getaway, just steps from the beach and local cafés.',
    price_per_night: 135,
    number_of_guests: 3
  }
]

puts "Creating flats..."

flats.each do |flat|
  Flat.create!(flat)
  puts "Created #{flat[:name]}"
end

puts "All flats created!"
