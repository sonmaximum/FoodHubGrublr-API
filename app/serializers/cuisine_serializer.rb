# frozen_string_literal: true

class CuisineSerializer < ActiveModel::Serializer
  attributes :id, :cuisine_type, :created_at
end
