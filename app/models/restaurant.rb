# frozen_string_literal: true

class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :menus
  has_many :restaurant_cuisines
  has_many :cuisines, through: :restaurant_cuisines
end
