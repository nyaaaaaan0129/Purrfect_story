class Post < ApplicationRecord
	belongs_to :member
	has_many :favorites, dependent: :destroy
	has_many :post_comments, dependent: :destroy
	belongs_to :post_genres
end
