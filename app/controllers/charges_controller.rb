# frozen_string_literal: true

class ChargesController < ApplicationController
  def new; end

  def create
    # Amount in cents
    @amount = params[:amount]

    customer = Stripe::Customer.create(
      email: params[:email],
      source:  params[:id],
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'FoodHubGrublr Payment',
      currency: 'usd'
    )
  end
end
