# frozen_string_literal: true

class PostComment < ApplicationRecord
  belongs_to :member
  belongs_to :post

  validates :comment, presence: true, length:{ maximum: 200, minimum: 20, message: '20文字以上200文字以内です'}
end
