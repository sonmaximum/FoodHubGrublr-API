# frozen_string_literal: true

class MenuSectionsController < OpenReadController
  before_action :set_menu_section, only: %i[update destroy]

  # GET /menu_sections
  def index
    @menu_sections = MenuSection.all

    render json: @menu_sections
  end

  # GET /menu_sections/1
  def show
    render json: MenuSection.find(params[:id])
  end

  # POST /menu_sections
  def create
    @menu_section = current_user.restaurant.menu.menu_sections.build(
      menu_section_params
    )

    if @menu_section.save
      render json: @menu_section, status: :created
    else
      render json: @menu_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_sections/1
  def update
    if @menu_section.update(menu_section_params)
      render json: @menu_section
    else
      render json: @menu_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menu_sections/1
  def destroy
    @menu_section.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu_section
    @menu_section = current_user.restaurant.menu.menu_sections.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def menu_section_params
    params.require(:menu_section).permit(:heading, :menu_id)
  end
end
