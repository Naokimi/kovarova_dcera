# == Schema Information
#
# Table name: adventures
#
#  id              :bigint           not null, primary key
#  current_chapter :float            default("1.1")
#  email           :string
#  load_code       :string
#  player_amount   :integer
#  test            :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe Adventure, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
