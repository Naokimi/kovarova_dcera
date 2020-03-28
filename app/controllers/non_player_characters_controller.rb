class NonPlayerCharactersController < ApplicationController
  before_action :set_non_player_character, only: [:show, :edit, :update, :destroy]

  # GET /non_player_characters
  # GET /non_player_characters.json
  def index
    @non_player_characters = NonPlayerCharacter.all
  end

  # GET /non_player_characters/1
  # GET /non_player_characters/1.json
  def show
  end

  # GET /non_player_characters/new
  def new
    @non_player_character = NonPlayerCharacter.new
  end

  # GET /non_player_characters/1/edit
  def edit
  end

  # POST /non_player_characters
  # POST /non_player_characters.json
  def create
    @non_player_character = NonPlayerCharacter.new(non_player_character_params)

    respond_to do |format|
      if @non_player_character.save
        format.html { redirect_to @non_player_character, notice: 'Non player character was successfully created.' }
        format.json { render :show, status: :created, location: @non_player_character }
      else
        format.html { render :new }
        format.json { render json: @non_player_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /non_player_characters/1
  # PATCH/PUT /non_player_characters/1.json
  def update
    respond_to do |format|
      if @non_player_character.update(non_player_character_params)
        format.html { redirect_to @non_player_character, notice: 'Non player character was successfully updated.' }
        format.json { render :show, status: :ok, location: @non_player_character }
      else
        format.html { render :edit }
        format.json { render json: @non_player_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /non_player_characters/1
  # DELETE /non_player_characters/1.json
  def destroy
    @non_player_character.destroy
    respond_to do |format|
      format.html { redirect_to non_player_characters_url, notice: 'Non player character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_player_character
      @non_player_character = NonPlayerCharacter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def non_player_character_params
      params.require(:non_player_character).permit(:name, :hp_left, :adventure_id)
    end
end
