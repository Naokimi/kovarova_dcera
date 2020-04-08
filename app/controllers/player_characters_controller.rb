class PlayerCharactersController < ApplicationController
  before_action :set_adventure, only: %i[new create]

  def new
    @player_character = PlayerCharacter.new
  end

  def create
    @player_character = PlayerCharacter.new(player_character_params)
    @player_character.adventure = @adventure
    if @player_character.save
      redirect_to edit_adventure_path(@adventure)
    else
      render :new
    end
  end

  private

  def set_adventure
    @adventure = Adventure.find(params[:adventure_id])
  end

  def player_character_params
    params.require(:player_character).permit(:path, :race, :name, :player_name)
  end
end
