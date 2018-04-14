# frozen_string_literal: true

class MenuSection < ApplicationRecord
  belongs_to :menu
  has_many :menu_items
end
