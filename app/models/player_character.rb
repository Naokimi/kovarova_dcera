# == Schema Information
#
# Table name: player_characters
#
#  id           :bigint           not null, primary key
#  name         :string
#  path         :string
#  player_name  :string
#  race         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  adventure_id :bigint           not null
#
# Indexes
#
#  index_player_characters_on_adventure_id  (adventure_id)
#
# Foreign Keys
#
#  fk_rails_...  (adventure_id => adventures.id)
#
class PlayerCharacter < ApplicationRecord
  belongs_to :adventure

  validates :name, presence: true
  validates :path, presence: true
  validates :player_name, presence: true
  validates :race, presence: true
end
