# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :member, optional: true
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  belongs_to :post_genre, optional: true

  def favorited_by?(member)
    favorites.where(member_id: member.id).exists?
  end

  attachment :image

  validates :title, presence: true
  validates :content, presence: true
end
