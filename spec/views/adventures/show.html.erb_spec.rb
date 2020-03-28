require 'rails_helper'

RSpec.describe "adventures/show", type: :view do
  before(:each) do
    @adventure = assign(:adventure, Adventure.create!(
      :current_chapter => 2.5,
      :load_code => "Load Code",
      :email => "Email",
      :test => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Load Code/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
  end
end
