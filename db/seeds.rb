# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
adventure = Adventure.new(test: true, player_amount: 3)
adventure.save!
adventure.player_amount.times do
  pc = PlayerCharacter.new(player_name: Faker::Name.name,
                           name: Faker::Games::Heroes.name,
                           race: 'Human',
                           path: Faker::Games::Heroes.klass)
  pc.adventure_id = adventure.id
  pc.save!
end
