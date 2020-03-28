require 'rails_helper'

RSpec.describe "player_characters/show", type: :view do
  before(:each) do
    @player_character = assign(:player_character, PlayerCharacter.create!(
      :name => "Name",
      :class => "Class",
      :race => "Race",
      :player_name => "Player Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Class/)
    expect(rendered).to match(/Race/)
    expect(rendered).to match(/Player Name/)
  end
end
