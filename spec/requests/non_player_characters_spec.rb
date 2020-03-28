require 'rails_helper'

RSpec.describe "NonPlayerCharacters", type: :request do
  describe "GET /non_player_characters" do
    it "works! (now write some real specs)" do
      get non_player_characters_path
      expect(response).to have_http_status(200)
    end
  end
end
