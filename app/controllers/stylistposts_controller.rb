class StylistpostsController < ApplicationController
  before_action :set_stylistpost, only: [:show, :update, :destroy]

  # GET /stylistposts
  def index
    @stylistposts = Stylistpost.all

    render json: @stylistposts
  end

  # GET /stylistposts/1
  def show
    render json: @stylistpost
  end

  # POST /stylistposts
  def create
    @stylistpost = Stylistpost.new(stylistpost_params)

    if @stylistpost.save
      render json: @stylistpost, status: :created, location: @stylistpost
    else
      render json: @stylistpost.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stylistposts/1
  def update
    if @stylistpost.update(stylistpost_params)
      render json: @stylistpost
    else
      render json: @stylistpost.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stylistposts/1
  def destroy
    @stylistpost.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stylistpost
      @stylistpost = Stylistpost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stylistpost_params
      params.require(:stylistpost).permit(:stylist_id, :post_id)
    end
end
