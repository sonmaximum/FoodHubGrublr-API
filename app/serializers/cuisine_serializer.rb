# frozen_string_literal: true

class CuisineSerializer < ActiveModel::Serializer
  attributes :id, :cuisine_type, :editable, :created_at

  def editable
    scope == object.user
  end
end
