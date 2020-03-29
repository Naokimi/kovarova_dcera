# == Schema Information
#
# Table name: adventures
#
#  id              :bigint           not null, primary key
#  current_chapter :float
#  load_code       :string
#  email           :string
#  test            :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Adventure < ApplicationRecord
  alias_attribute :pcs, :player_characters
  alias_attribute :npcs, :non_player_characters

  has_many :player_characters
  has_many :non_player_characters
end
