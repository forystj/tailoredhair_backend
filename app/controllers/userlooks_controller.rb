class UserlooksController < ApplicationController
  before_action :set_userlook, only: [:show, :update, :destroy]

  # GET /userlooks
  def index
    @userlooks = Userlook.all

    render json: @userlooks.to_json(include: [:user, :look])
  end

  # GET /userlooks/1
  def show
    render json: @userlook.to_json(include: [:user, :look])
  end

  # POST /userlooks
  def create
    @userlook = Userlook.new(userlook_params)

    if @userlook.save
      render json: @userlook, status: :created, location: @userlook
    else
      render json: @userlook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userlooks/1
  def update
    if @userlook.update(userlook_params)
      render json: @userlook
    else
      render json: @userlook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userlooks/1
  def destroy
    @userlook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userlook
      @userlook = Userlook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userlook_params
      params.require(:userlook).permit(:user_id, :look_id)
    end
end
