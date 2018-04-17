# frozen_string_literal: true

class Restaurant < ApplicationRecord
  belongs_to :user
  has_one :menu, dependent: :destroy
  has_many :restaurant_cuisines, dependent: :destroy
  has_many :cuisines, through: :restaurant_cuisines
end
