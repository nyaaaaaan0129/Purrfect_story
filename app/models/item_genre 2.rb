# frozen_string_literal: true

class ItemGenre < ApplicationRecord
  has_many :items
end
