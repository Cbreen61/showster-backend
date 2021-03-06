class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :update, :destroy]
  before_action :set_show

  # GET /characters
  def index
    @characters = Character.all

    render json: @characters.arrc_to_json
  end

  # GET /characters/1
  def show
    render json: @character.instance_to_json
  end

  # POST /characters
  def create
    @character = @show.characters.new(character_params)

    if @character.save
      render json: @show.instance_to_json
    else
      render json: @character.instance_to_json.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      render json: @character.instance_to_json
    else
      render json: @character.instance_to_json.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end
    def set_show
      @show = Show.find(params[:show_id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:name, :status, :species, :description, :show_id, :likes, :dislikes, :image)
    end
end
