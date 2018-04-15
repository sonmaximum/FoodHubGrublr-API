# frozen_string_literal: true

class MenuSectionSerializer < ActiveModel::Serializer
  attributes :id, :heading, :editable, :created_at, :menu_id

  def editable
    scope == object.menu.restaurant.user
  end
end
