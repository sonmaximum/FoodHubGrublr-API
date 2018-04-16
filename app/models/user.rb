# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_one :restaurant
  has_one :cart
  has_many :order_items, through: :cart
end
