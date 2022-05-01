class BirdsController < ApplicationController
      # GET /birds
  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find(params[:id])
    render json: bird
  end
end
