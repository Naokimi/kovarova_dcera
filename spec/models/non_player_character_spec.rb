# == Schema Information
#
# Table name: non_player_characters
#
#  id           :bigint           not null, primary key
#  hp_left      :integer
#  max_hp       :integer
#  name         :string
#  routed       :boolean          default("false")
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  adventure_id :bigint           not null
#
# Indexes
#
#  index_non_player_characters_on_adventure_id  (adventure_id)
#
# Foreign Keys
#
#  fk_rails_...  (adventure_id => adventures.id)
#
require 'rails_helper'

RSpec.describe NonPlayerCharacter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
