# frozen_string_literal: true

class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :editable, :created_at, :user_id

  def editable
    scope == object.user
  end
end
