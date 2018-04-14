# frozen_string_literal: true

class Cuisine < ApplicationRecord
  has_many :restaurant_cuisines
  has_many :restaurants, through: :restaurant_cuisines
end
