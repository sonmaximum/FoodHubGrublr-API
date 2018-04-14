# frozen_string_literal: true

class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :editable, :created_at
  has_one :cart
  has_one :menu_item

  def editable
    scope == object.user
  end
end
