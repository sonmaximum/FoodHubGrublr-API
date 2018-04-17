# frozen_string_literal: true

class CuisinesController < OpenReadController
  # GET /cuisines
  def index
    @cuisines = Cuisine.all.sort

    render json: @cuisines
  end

  # GET /cuisines/1
  def show
    render json: Cuisine.find(params[:id])
  end
end
