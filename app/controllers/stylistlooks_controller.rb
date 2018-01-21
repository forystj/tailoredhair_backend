class StylistlooksController < ApplicationController
  before_action :set_stylistlook, only: [:show, :update, :destroy]

  # GET /stylistlooks
  def index
    @stylistlooks = Stylistlook.all

    render json: @stylistlooks
  end

  # GET /stylistlooks/1
  def show
    render json: @stylistlook
  end

  # POST /stylistlooks
  def create
    @stylistlook = Stylistlook.new(stylistlook_params)

    if @stylistlook.save
      render json: @stylistlook, status: :created, location: @stylistlook
    else
      render json: @stylistlook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stylistlooks/1
  def update
    if @stylistlook.update(stylistlook_params)
      render json: @stylistlook
    else
      render json: @stylistlook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stylistlooks/1
  def destroy
    @stylistlook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stylistlook
      @stylistlook = Stylistlook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stylistlook_params
      params.require(:stylistlook).permit(:stylist_id, :look_id)
    end
end
