require 'faker'


10.times do 
  Camera.create(
  title:Faker::Movies::HarryPotter.spell,
  category: Faker::Movies::HarryPotter.house,
  description: Faker::Movies::HarryPotter.quote,
  price_per_day: rand(80..150),
  rating: rand(1..5),
  address: Faker::Movies::HarryPotter.location,
  extras: Faker::Movies::HarryPotter.book,
  user: User.first
  )
end