Bike.destroy_all
Owner.destroy_all
Renter.destroy_all
Shop.destroy_all
Rental.destroy_all

puts "Seeding"

bike_type = ["Pavement", "Multi-Use", "Mountain", "Electric", "Folding"]
model = ["Pinarello", "Trek", "Raleigh", "Focus", "Felt", "Specialized", "Schwinn"]
size = [ 24, 26, 28 ]

days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

Shop.create(name: "NYC Velo", location: "West Village")
Shop.create(name: "Habitat", location: "Chelsea")
Shop.create(name: "Frank's", location: "LES")
Shop.create(name: "Ride Brooklyn", location: "Boerum Hill")
Shop.create(name: "718 Cyclery", location: "Park Slope")


15.times do
  Owner.create(name: Faker::Name.name, age: rand(18..50), location: Shop.all.sample.location)
end

20.times do
    Renter.create(name: Faker::Name.name, age: rand(16..28), shop: Shop.all.sample)
    Bike.create(owner: Owner.all.sample, model: model.sample, size: size.sample,
        bike_type: bike_type.sample, availability?: Faker::Boolean.boolean
    )
    Rental.create(bike: Bike.all.sample, renter: Renter.all.sample, price: rand(10.0..30.0),
        day: days.sample, comment: Faker::Restaurant.review, rating: rand(1..5)
    )
end
