adventure = Adventure.new(test: true, player_amount: 3)
adventure.save!
adventure.player_amount.times do
  pc = PlayerCharacter.new(player_name: Faker::Name.name,
                           name: Faker::Games::Heroes.name,
                           race: %w[Human Dwarf Elf Halfling].sample,
                           path: Faker::Games::Heroes.klass)
  pc.adventure_id = adventure.id
  pc.save!
end
