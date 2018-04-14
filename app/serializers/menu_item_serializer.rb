# frozen_string_literal: true

class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :image, :editable, :created_at
  has_one :menu_section

  def editable
    scope == object.user
  end
end
