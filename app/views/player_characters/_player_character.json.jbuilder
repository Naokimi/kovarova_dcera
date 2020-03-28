json.extract! player_character, :id, :name, :class, :race, :player_name, :created_at, :updated_at
json.url player_character_url(player_character, format: :json)
