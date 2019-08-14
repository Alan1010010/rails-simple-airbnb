require 'faker'

10.times do
Flat.create!(
  name: Faker::Superhero.name,
  address: Faker::Address.street_address,
  description: Faker::TvShows::RickAndMorty.quote,
  price_per_night: Faker::Number.number(digits: 2),
  number_of_guests: Faker::Number.number(digits: 1)
)
end
