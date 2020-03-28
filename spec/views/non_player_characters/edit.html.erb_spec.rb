require 'rails_helper'

RSpec.describe "non_player_characters/edit", type: :view do
  before(:each) do
    @non_player_character = assign(:non_player_character, NonPlayerCharacter.create!(
      :name => "",
      :hp_left => 1,
      :adventure => nil
    ))
  end

  it "renders the edit non_player_character form" do
    render

    assert_select "form[action=?][method=?]", non_player_character_path(@non_player_character), "post" do

      assert_select "input[name=?]", "non_player_character[name]"

      assert_select "input[name=?]", "non_player_character[hp_left]"

      assert_select "input[name=?]", "non_player_character[adventure_id]"
    end
  end
end
