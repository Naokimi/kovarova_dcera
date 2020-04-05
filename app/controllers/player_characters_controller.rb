class PlayerCharactersController < ApplicationController
  def new
    @adventure = Adventure.find(params[:adventure_id])
    @player_character = PlayerCharacter.new
  end

  def create
    @adventure = Adventure.find(params[:adventure_id])
    @player_character = PlayerCharacter.new(player_character_params)
    @player_character.adventure = @adventure
    if @player_character.save
      redirect_to adventure_path(@adventure)
    else
      render :new
    end
  end

  private

  def player_character_params
    params.require(:player_character).permit(:path, :race, :name, :player_name)
  end
end
