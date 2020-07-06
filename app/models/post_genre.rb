# frozen_string_literal: true

class PostGenre < ApplicationRecord
  has_many :posts

  enum valid_invalid_status: { 有効: 0, 無効: 1 }
end
