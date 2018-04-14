# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :menu_items, through: :order_items
end
