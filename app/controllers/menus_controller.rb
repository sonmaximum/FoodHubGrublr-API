# frozen_string_literal: true

class MenusController < OpenReadController
  before_action :set_menu, only: %i[update destroy]

  # GET /menus
  def index
    @menus = Menu.all.sort

    render json: @menus
  end

  # GET /menus/1
  def show
    render json: Menu.find(params[:id]), root: :menu
  end

  # POST /menus
  def create
    @menu = current_user.restaurant.build_menu(menu_params)

    if @menu.save
      render json: @menu, status: :created
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menus/1
  def update
    if @menu.update(menu_params)
      render json: @menu
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menus/1
  def destroy
    @menu.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu
    @menu = Menu.where(restaurant: current_user.restaurant).find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def menu_params
    params.require(:menu).permit(:restaurant_id)
  end
end
