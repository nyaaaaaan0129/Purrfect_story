# frozen_string_literal: true

class CartItem < ApplicationRecord
  belongs_to :member
  belongs_to :item
end
