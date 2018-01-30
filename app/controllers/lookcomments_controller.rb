class LookcommentsController < ApplicationController
  before_action :set_lookcomment, only: [:show, :update, :destroy]

  # GET /lookcomments
  def index
    @lookcomments = Lookcomment.all

    render json: @lookcomments.to_json(include: [:look, :comment])
  end

  # GET /lookcomments/1
  def show
    render json: @lookcomment.to_json(include: [:look, :comment])
  end

  # POST /lookcomments
  def create
    @lookcomment = Lookcomment.new(lookcomment_params)

    if @lookcomment.save
      render json: @lookcomment, status: :created, location: @lookcomment
    else
      render json: @lookcomment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lookcomments/1
  def update
    if @lookcomment.update(lookcomment_params)
      render json: @lookcomment
    else
      render json: @lookcomment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lookcomments/1
  def destroy
    @lookcomment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lookcomment
      @lookcomment = Lookcomment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lookcomment_params
      params.require(:lookcomment).permit(:look_id, :comment_id)
    end
end
