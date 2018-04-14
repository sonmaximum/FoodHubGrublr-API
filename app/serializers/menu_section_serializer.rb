# frozen_string_literal: true

class MenuSectionSerializer < ActiveModel::Serializer
  attributes :id, :heading, :editable, :created_at
  has_one :menu

  def editable
    scope == object.user
  end
end
