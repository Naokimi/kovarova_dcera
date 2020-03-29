class Adventure < ApplicationRecord
  alias_attribute :pcs, :player_characters
  alias_attribute :npcs, :non_player_characters

  has_many :player_characters
  has_many :non_player_characters
end
