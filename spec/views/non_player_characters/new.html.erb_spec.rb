require 'rails_helper'

RSpec.describe "non_player_characters/new", type: :view do
  before(:each) do
    assign(:non_player_character, NonPlayerCharacter.new(
      :name => "",
      :hp_left => 1,
      :adventure => nil
    ))
  end

  it "renders new non_player_character form" do
    render

    assert_select "form[action=?][method=?]", non_player_characters_path, "post" do

      assert_select "input[name=?]", "non_player_character[name]"

      assert_select "input[name=?]", "non_player_character[hp_left]"

      assert_select "input[name=?]", "non_player_character[adventure_id]"
    end
  end
end
