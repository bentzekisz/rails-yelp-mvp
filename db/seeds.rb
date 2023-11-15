# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create(name: "Lady Marmalade", address: "Moulin Rogue, Paris", category: "french")
Restaurant.create(name: "Tessa Testicles", address: "Pasing, Munich", category: "german")
Restaurant.create(name: "Good Old Corruption", address: "Budapest, Parlament", category: "hungarian")
Restaurant.create(name: "Spicy Dreams", address: "Downtown, Shanghai", category: "chinese")
Restaurant.create(name: "La Finesse", address: "Rich Area, Milano", category: "italian")
