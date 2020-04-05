class AdventuresController < ApplicationController
  before_action :set_adventure, only: %i[show edit update]

  # GET /adventures
  def index
    @adventures = Adventure.all
  end

  # GET /adventures/1
  def show
  end

  # GET /adventures/new
  def new
    @adventure = Adventure.new
  end

  # GET /adventures/1/edit
  def edit
  end

  # POST /adventures
  def create
    @adventure = Adventure.new(adventure_params)
    NpcCreationService.create_npcs(@adventure)

    respond_to do |format|
      if @adventure.save
        format.html { redirect_to new_adventure_player_character_path(@adventure), notice: 'Začínáme.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /adventures/1
  def update
    respond_to do |format|
      if @adventure.update(adventure_params)
        format.html { redirect_to @adventure, notice: 'Adventure was successfully updated.' }
        format.json { render :show, status: :ok, location: @adventure }
      else
        format.html { render :edit }
        format.json { render json: @adventure.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_adventure
    @adventure = Adventure.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def adventure_params
    params.require(:adventure).permit(:current_chapter, :player_amount, :email, :test)
  end
end
