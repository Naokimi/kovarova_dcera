require 'rails_helper'

RSpec.describe "player_characters/index", type: :view do
  before(:each) do
    assign(:player_characters, [
      PlayerCharacter.create!(
        :name => "Name",
        :class => "Class",
        :race => "Race",
        :player_name => "Player Name"
      ),
      PlayerCharacter.create!(
        :name => "Name",
        :class => "Class",
        :race => "Race",
        :player_name => "Player Name"
      )
    ])
  end

  it "renders a list of player_characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Class".to_s, :count => 2
    assert_select "tr>td", :text => "Race".to_s, :count => 2
    assert_select "tr>td", :text => "Player Name".to_s, :count => 2
  end
end
