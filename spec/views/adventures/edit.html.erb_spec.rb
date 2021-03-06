require 'rails_helper'

RSpec.describe "adventures/edit", type: :view do
  before(:each) do
    @adventure = assign(:adventure, Adventure.create!(
      :current_chapter => 1.5,
      :load_code => "MyString",
      :email => "MyString",
      :test => false
    ))
  end

  it "renders the edit adventure form" do
    render

    assert_select "form[action=?][method=?]", adventure_path(@adventure), "post" do

      assert_select "input[name=?]", "adventure[current_chapter]"

      assert_select "input[name=?]", "adventure[load_code]"

      assert_select "input[name=?]", "adventure[email]"

      assert_select "input[name=?]", "adventure[test]"
    end
  end
end
