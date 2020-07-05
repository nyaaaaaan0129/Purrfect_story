# frozen_string_literal: true

class ItemGenre < ApplicationRecord
  has_many :items

  enum valid_invalid_status: { 有効: 0, 無効: 1 }
  validates :name, presence: true
end
