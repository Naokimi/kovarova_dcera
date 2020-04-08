class NpcCreationService
  def self.create_npcs(adventure)
    base_player_amount = 4
    NonPlayerCharacter.create!(max_hp: 11, hp_left: 11, name: 'Goblin náčelník', adventure_id: adventure.id)
    NonPlayerCharacter.create!(max_hp: 7, hp_left: 7, name: 'Goblin šaman', adventure_id: adventure.id)
    (adventure.player_amount * 6 / base_player_amount).times do
      NonPlayerCharacter.create!(max_hp: 10, hp_left: 10, name: 'Goblin "drsňák"', adventure_id: adventure.id)
    end
    (adventure.player_amount * 17 / base_player_amount).times do
      NonPlayerCharacter.create!(max_hp: 7, hp_left: 7, name: 'Goblin "minion"', adventure_id: adventure.id)
    end
  end
end
