# frozen_string_literal: true

class CartsController < ProtectedController
  before_action :set_cart, only: %i[show update destroy]

  # GET /carts/
  def index
    render json: Cart.where(user: current_user)
  end

  # GET /carts/1
  def show
    render json: @cart, root: :cart
  end

  # POST /carts
  def create
    @cart = current_user.build_cart(cart_params)

    if @cart.save
      render json: @cart, status: :created
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carts/1
  def update
    if @cart.update(cart_params)
      render json: @cart
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carts/1
  def destroy
    @cart.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cart
    @cart = Cart.where(user: current_user).find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def cart_params
    params.require(:cart).permit(:user_id)
  end
end
