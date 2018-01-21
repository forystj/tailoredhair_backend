class StyliststatusesController < ApplicationController
  before_action :set_styliststatus, only: [:show, :update, :destroy]

  # GET /styliststatuses
  def index
    @styliststatuses = Styliststatus.all

    render json: @styliststatuses
  end

  # GET /styliststatuses/1
  def show
    render json: @styliststatus
  end

  # POST /styliststatuses
  def create
    @styliststatus = Styliststatus.new(styliststatus_params)

    if @styliststatus.save
      render json: @styliststatus, status: :created, location: @styliststatus
    else
      render json: @styliststatus.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /styliststatuses/1
  def update
    if @styliststatus.update(styliststatus_params)
      render json: @styliststatus
    else
      render json: @styliststatus.errors, status: :unprocessable_entity
    end
  end

  # DELETE /styliststatuses/1
  def destroy
    @styliststatus.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_styliststatus
      @styliststatus = Styliststatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def styliststatus_params
      params.require(:styliststatus).permit(:user_id, :stylist_id)
    end
end
