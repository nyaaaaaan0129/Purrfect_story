# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :member
  has_many :order_items, dependent: :destroy
end
