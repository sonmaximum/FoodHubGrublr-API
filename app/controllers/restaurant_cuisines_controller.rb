# frozen_string_literal: true

class RestaurantCuisinesController < OpenReadController
  before_action :set_restaurant_cuisine, only: %i[update destroy]

  # GET /restaurant_cuisines
  def index
    @restaurant_cuisines = RestaurantCuisine.all.sort

    render json: @restaurant_cuisines
  end

  # GET /restaurant_cuisines/1
  def show
    render json: RestaurantCuisine.find(params[:id]), root: restaurant_cuisine
  end

  # POST /restaurant_cuisines
  def create
    @restaurant_cuisine = current_user.restaurant.restaurant_cuisines.build(
      restaurant_cuisine_params
    )

    if @restaurant_cuisine.save
      render json: @restaurant_cuisine, status: :created
    else
      render json: @restaurant_cuisine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurant_cuisines/1
  def update
    if @restaurant_cuisine.update(restaurant_cuisine_params)
      render json: @restaurant_cuisine
    else
      render json: @restaurant_cuisine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurant_cuisines/1
  def destroy
    @restaurant_cuisine.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant_cuisine
    @restaurant_cuisine = current_user.restaurant.restaurant_cuisines.find(
      params[:id]
    )
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_cuisine_params
    params.require(:restaurant_cuisine).permit(:cuisine_id, :restaurant_id)
  end
end
