class UserpostsController < ApplicationController
  before_action :set_userpost, only: [:show, :update, :destroy]

  # GET /userposts
  def index
    @userposts = Userpost.all

    render json: @userposts.to_json(include: [:user, :post])
  end

  # GET /userposts/1
  def show
    render json: @userpost.to_json(include: [:user, :post])
  end

  # POST /userposts
  def create
    @userpost = Userpost.new(userpost_params)

    if @userpost.save
      render json: @userpost, status: :created, location: @userpost
    else
      render json: @userpost.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userposts/1
  def update
    if @userpost.update(userpost_params)
      render json: @userpost
    else
      render json: @userpost.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userposts/1
  def destroy
    @userpost.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userpost
      @userpost = Userpost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userpost_params
      params.require(:userpost).permit(:user_id, :posts_id)
    end
end
