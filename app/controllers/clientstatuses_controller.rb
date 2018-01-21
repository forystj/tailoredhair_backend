class ClientstatusesController < ApplicationController
  before_action :set_clientstatus, only: [:show, :update, :destroy]

  # GET /clientstatuses
  def index
    @clientstatuses = Clientstatus.all

    render json: @clientstatuses
  end

  # GET /clientstatuses/1
  def show
    render json: @clientstatus
  end

  # POST /clientstatuses
  def create
    @clientstatus = Clientstatus.new(clientstatus_params)

    if @clientstatus.save
      render json: @clientstatus, status: :created, location: @clientstatus
    else
      render json: @clientstatus.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clientstatuses/1
  def update
    if @clientstatus.update(clientstatus_params)
      render json: @clientstatus
    else
      render json: @clientstatus.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clientstatuses/1
  def destroy
    @clientstatus.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientstatus
      @clientstatus = Clientstatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clientstatus_params
      params.require(:clientstatus).permit(:user_id, :client_id)
    end
end
