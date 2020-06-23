# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :member, optional: true
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  belongs_to :post_genres, optional: true

  attachment :image
end