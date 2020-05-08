Bike.destroy_all
Owner.destroy_all
Renter.destroy_all
Shop.destroy_all
Rental.destroy_all

puts "Seeding"

bike_type = ["Pavement", "Multi-Use", "Mountain", "Electric", "Folding"]
model = ["Pinarello", "Trek", "Raleigh", "Focus", "Felt", "Specialized", "Schwinn"]
size = [ 24, 26, 28 ]
bike_image = [
    "https://i.ibb.co/bvQpjSS/electric2.jpg",
    "https://i.ibb.co/dbf3QQV/electricbike.jpg",
    "https://i.ibb.co/PC4BNRR/folding2.jpg",
    "https://i.ibb.co/rts95CP/mountain2.jpg",
    "https://i.ibb.co/rts95CP/mountain2.jpg",
    "https://i.ibb.co/BBNkxwy/multi2.jpg",
    "https://i.ibb.co/ZHRfsJd/multibike.jpg",
    "https://i.ibb.co/rts95CP/mountain2.jpg"
]

days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

Shop.create(name: "NYC Velo", location: "Hell's Kitchen", website: "https://www.nycvelo.com/")
Shop.create(name: "Habitat", location: "Chelsea", website: "https://www.bicyclehabitat.com/")
Shop.create(name: "Frank's", location: "LES", website: "http://www.franksbikes.com/")
Shop.create(name: "Ride Brooklyn", location: "Boerum Hill", website: "https://www.ridebrooklynny.com/")
Shop.create(name: "718 Cyclery", location: "Park Slope", website: "http://www.718c.com/")


15.times do
  Owner.create(name: Faker::Name.name, age: rand(18..50), location: Shop.all.sample.location)
end



20.times do
    Renter.create(name: Faker::Name.name, age: rand(18..50), shop: Shop.all.sample, password: "123")
    Bike.create(owner: Owner.all.sample, model: model.sample, size: size.sample,
        bike_type: bike_type.sample, availability?: Faker::Boolean.boolean, bike_img: bike_image.sample
    )
    Rental.create(bike: Bike.all.sample, renter: Renter.all.sample, price: rand(10.0..30.0),
        day: days.sample, comment: Faker::Quotes::Shakespeare.as_you_like_it_quote, rating: rand(1..10)
    )
end
