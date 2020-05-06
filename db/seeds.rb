Bike.destroy_all
Owner.destroy_all
Renter.destroy_all
Shop.destroy_all
Rental.destroy_all

puts "Seeding"

bike_type = ["Pavement", "Multi-Use", "Mountain", "Electric"]
days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

20.times do
    Owner.create(name: Faker::Name.name, age: rand(16..28), location: Faker::Address.full_address)
    Shop.create(name: Faker::Company.name, location: Faker::Address.full_address)
end

30.times do
    Renter.create(name: Faker::Name.name, age: rand(16..28), shop: Shop.all.sample)
    Bike.create(owner: Owner.all.sample, model: Faker::Vehicle.model, size: rand(1..8), 
        bike_type: bike_type.sample, availability?: Faker::Boolean.boolean
    )
    Rental.create(bike: Bike.all.sample, renter: Renter.all.sample, price: Faker::Number.decimal, 
        day: days.sample, comment: Faker::Restaurant.review, rating: rand(1..10)
    )
end