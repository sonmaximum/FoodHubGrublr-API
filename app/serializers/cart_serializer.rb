# frozen_string_literal: true

class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :editable, :created_at

  def editable
    scope == object.user
  end
end
