# frozen_string_literal: true

class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :editable, :created_at, :cart_id, :menu_item_id

  def editable
    scope == object.cart.user
  end
end
