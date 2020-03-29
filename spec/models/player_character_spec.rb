# == Schema Information
#
# Table name: player_characters
#
#  id           :bigint           not null, primary key
#  class        :string
#  name         :string
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
require 'rails_helper'

RSpec.describe PlayerCharacter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
