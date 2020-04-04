class PlayerCharactersController < ApplicationController
  def new
    @adventure = Adventure.find(params[:adventure_id])
    @player_character = PlayerCharacter.new
  end

  def create
  end
end
