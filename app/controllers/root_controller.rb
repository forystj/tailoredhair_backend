class RootController < ApplicationController
  def index
    render json: {status: 200, message: 'Bucket List API'}
  end
end
