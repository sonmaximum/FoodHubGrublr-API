# frozen_string_literal: true

class MenuItemsController < OpenReadController
  before_action :set_menu_item, only: %i[update destroy]

  # GET /menu_items
  def index
    @menu_items = MenuItem.all.sort

    render json: @menu_items
  end

  # GET /menu_items/1
  def show
    render json: MenuItem.find(params[:id]), root: :menu_item
  end

  # POST /menu_items
  def create
    @menu_item = current_user.restaurant.menu.menu_sections.find(
      menu_item_params[:menu_section_id]
    ).menu_items.build(menu_item_params)

    if @menu_item.save
      render json: @menu_item, status: :created
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_items/1
  def update
    if @menu_item.update(menu_item_params)
      render json: @menu_item
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menu_items/1
  def destroy
    @menu_item.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu_item
    @menu_item = MenuItem.where(
      menu_section: current_user.restaurant.menu.menu_sections.find(
        menu_item_params[:menu_section_id]
      )
    ).find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def menu_item_params
    params.require(:menu_item).permit(
      :description, :price, :image, :menu_section_id, :name
    )
  end
end
