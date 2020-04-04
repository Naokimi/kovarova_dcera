# == Schema Information
#
# Table name: adventures
#
#  id              :bigint           not null, primary key
#  current_chapter :float
#  email           :string
#  load_code       :string
#  player_amount   :integer
#  test            :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Adventure < ApplicationRecord
  alias_attribute :pcs, :player_characters
  alias_attribute :npcs, :non_player_characters

  validates :player_amount, numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 6 }

  has_many :player_characters, dependent: :destroy
  has_many :non_player_characters, dependent: :destroy
end
