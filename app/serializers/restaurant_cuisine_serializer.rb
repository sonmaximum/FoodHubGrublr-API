# frozen_string_literal: true

class RestaurantCuisineSerializer < ActiveModel::Serializer
  attributes :id, :editable, :created_at, :cuisine_id, :restaurant_id

  def editable
    scope == object.restaurant.user
  end
end
