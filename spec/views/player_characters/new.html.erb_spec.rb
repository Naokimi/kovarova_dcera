require 'rails_helper'

RSpec.describe "player_characters/new", type: :view do
  before(:each) do
    assign(:player_character, PlayerCharacter.new(
      :name => "MyString",
      :class => "MyString",
      :race => "MyString",
      :player_name => "MyString"
    ))
  end

  it "renders new player_character form" do
    render

    assert_select "form[action=?][method=?]", player_characters_path, "post" do

      assert_select "input[name=?]", "player_character[name]"

      assert_select "input[name=?]", "player_character[class]"

      assert_select "input[name=?]", "player_character[race]"

      assert_select "input[name=?]", "player_character[player_name]"
    end
  end
end
