class RootController < ApplicationController
  def index
    render json: {status: 200, message: 'TAILORED HAIR API'}
  end
end
