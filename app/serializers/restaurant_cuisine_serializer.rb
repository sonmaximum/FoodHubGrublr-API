# frozen_string_literal: true

class RestaurantCuisineSerializer < ActiveModel::Serializer
  attributes :id, :editable, :created_at
  has_one :cuisine
  has_one :restaurant

  def editable
    scope == object.user
  end
end
