# frozen_string_literal: true

class MenuSerializer < ActiveModel::Serializer
  attributes :id, :editable, :created_at, :restaurant_id

  def editable
    scope == object.restaurant.user
  end
end
