require 'rails_helper'

RSpec.describe "player_characters/edit", type: :view do
  before(:each) do
    @player_character = assign(:player_character, PlayerCharacter.create!(
      :name => "MyString",
      :class => "MyString",
      :race => "MyString",
      :player_name => "MyString"
    ))
  end

  it "renders the edit player_character form" do
    render

    assert_select "form[action=?][method=?]", player_character_path(@player_character), "post" do

      assert_select "input[name=?]", "player_character[name]"

      assert_select "input[name=?]", "player_character[class]"

      assert_select "input[name=?]", "player_character[race]"

      assert_select "input[name=?]", "player_character[player_name]"
    end
  end
end
