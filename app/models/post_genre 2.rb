# frozen_string_literal: true

class PostGenre < ApplicationRecord
  has_many :posts
end
