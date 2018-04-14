# frozen_string_literal: true

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :address, :phone_number, :description,
             :user_id, :editable, :created_at

  def editable
    scope == object.user
  end
end
