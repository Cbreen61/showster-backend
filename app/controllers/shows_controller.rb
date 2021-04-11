class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :update, :destroy]

  # GET /shows
  def index
    @shows = Show.all

    render json: @shows.arr_to_json
  end

  # GET /shows/1
  def show
    render json: @show.instance_to_json
  end

  # POST /shows
  def create
    @show = Show.new(show_params)

    if @show.save
      render json: @show.instance_to_json, status: :created, location: @show.instance_to_json
    else
      render json: @show.instance_to_json.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shows/1
  def update
    if @show.update(show_params)
      render json: @show.instance_to_json
    else
      render json: @show.instance_to_json.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shows/1
  def destroy
    @show.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show
      @show = Show.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def show_params
      params.require(:show).permit(:title, :status, :release_date, :seasons, :likes, :dislikes, :description, :image)
    end
end
