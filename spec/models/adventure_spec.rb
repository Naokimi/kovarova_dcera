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
require 'rails_helper'

RSpec.describe Adventure, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
