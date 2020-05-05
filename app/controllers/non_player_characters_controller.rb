class NonPlayerCharactersController < ApplicationController
  before_action :set_adventure, only: %i[edit update]
  before_action :set_npc, only: %i[edit update]

  def edit
  end

  def update
    if @npc.update(player_character_params)
      redirect_to edit_adventure_path(@adventure)
    else
      redirect_to edit_adventure_path(@adventure), notice: @npc.errors.messages
    end
  end

  private

  def set_npc
    @npc = NonPlayerCharacter.find(params[:id])
  end

  def set_adventure
    @adventure = Adventure.find(params[:adventure_id])
  end

  def player_character_params
    params.require(:non_player_character).permit(:hp_left, :routed)
  end
end
