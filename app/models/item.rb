# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :order_items, dependent: :destroy
  blongs_to :item_genre
end
