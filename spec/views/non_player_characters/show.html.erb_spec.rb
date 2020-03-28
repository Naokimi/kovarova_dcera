require 'rails_helper'

RSpec.describe "non_player_characters/show", type: :view do
  before(:each) do
    @non_player_character = assign(:non_player_character, NonPlayerCharacter.create!(
      :name => "",
      :hp_left => 2,
      :adventure => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
