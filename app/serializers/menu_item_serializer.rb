# frozen_string_literal: true

class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :editable,
             :created_at, :menu_section_id

  def editable
    scope == object.menu_section.menu.restaurant.user
  end
end
