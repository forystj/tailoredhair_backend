class UsercommentsController < ApplicationController
  before_action :set_usercomment, only: [:show, :update, :destroy]

  # GET /usercomments
  def index
    @usercomments = Usercomment.all

    render json: @usercomments.to_json(include: [:user, :comment])
  end

  # GET /usercomments/1
  def show
    render json: @usercomment.to_json(include: [:user, :comment])
  end

  # POST /usercomments
  def create
    @usercomment = Usercomment.new(usercomment_params)

    if @usercomment.save
      render json: @usercomment, status: :created, location: @usercomment
    else
      render json: @usercomment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usercomments/1
  def update
    if @usercomment.update(usercomment_params)
      render json: @usercomment
    else
      render json: @usercomment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usercomments/1
  def destroy
    @usercomment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usercomment
      @usercomment = Usercomment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usercomment_params
      params.require(:usercomment).permit(:user_id, :comment_id)
    end
end
