# frozen_string_literal: true

class MenuItem < ApplicationRecord
  belongs_to :menu_section
  has_many :order_items
  has_many :carts, through: :order_items
end
