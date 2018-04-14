# frozen_string_literal: true

class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable, :created_at, :user_id, :user

  def editable
    scope == object.user
  end
end
