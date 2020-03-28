require 'rails_helper'

RSpec.describe "adventures/index", type: :view do
  before(:each) do
    assign(:adventures, [
      Adventure.create!(
        :current_chapter => 2.5,
        :load_code => "Load Code",
        :email => "Email",
        :test => false
      ),
      Adventure.create!(
        :current_chapter => 2.5,
        :load_code => "Load Code",
        :email => "Email",
        :test => false
      )
    ])
  end

  it "renders a list of adventures" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Load Code".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
