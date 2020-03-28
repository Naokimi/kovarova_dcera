require 'rails_helper'

RSpec.describe "non_player_characters/index", type: :view do
  before(:each) do
    assign(:non_player_characters, [
      NonPlayerCharacter.create!(
        :name => "",
        :hp_left => 2,
        :adventure => nil
      ),
      NonPlayerCharacter.create!(
        :name => "",
        :hp_left => 2,
        :adventure => nil
      )
    ])
  end

  it "renders a list of non_player_characters" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
