require 'rails_helper'

RSpec.describe "adventures/new", type: :view do
  before(:each) do
    assign(:adventure, Adventure.new(
      :current_chapter => 1.5,
      :load_code => "MyString",
      :email => "MyString",
      :test => false
    ))
  end

  it "renders new adventure form" do
    render

    assert_select "form[action=?][method=?]", adventures_path, "post" do

      assert_select "input[name=?]", "adventure[current_chapter]"

      assert_select "input[name=?]", "adventure[load_code]"

      assert_select "input[name=?]", "adventure[email]"

      assert_select "input[name=?]", "adventure[test]"
    end
  end
end
