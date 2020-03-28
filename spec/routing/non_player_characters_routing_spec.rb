require "rails_helper"

RSpec.describe NonPlayerCharactersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/non_player_characters").to route_to("non_player_characters#index")
    end

    it "routes to #new" do
      expect(:get => "/non_player_characters/new").to route_to("non_player_characters#new")
    end

    it "routes to #show" do
      expect(:get => "/non_player_characters/1").to route_to("non_player_characters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/non_player_characters/1/edit").to route_to("non_player_characters#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/non_player_characters").to route_to("non_player_characters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/non_player_characters/1").to route_to("non_player_characters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/non_player_characters/1").to route_to("non_player_characters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/non_player_characters/1").to route_to("non_player_characters#destroy", :id => "1")
    end
  end
end
