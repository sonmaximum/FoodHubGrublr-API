# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_sections, dependent: :destroy
end
