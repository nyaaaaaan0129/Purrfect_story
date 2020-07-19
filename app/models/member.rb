# frozen_string_literal: true

class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  enum withdrawal_status: { 有効: 0, 無効: 1 }

  attachment :image
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true

  has_many :active_relationships, class_name:  "Relationship", foreign_key: "follower_id", dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship", foreign_key: "followed_id", dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  # ユーザーをフォローする
  def follow(other_member)
    following << other_member
  end

  # ユーザーをフォロー解除する
  def unfollow(other_member)
    active_relationships.find_by(followed_id: other_member.id).destroy
  end

  # 現在のユーザーがフォローしてたらtrueを返す
  def following?(other_member)
    following.include?(other_member)
  end

  def active_for_authentication?
    super && (is_deleted == false)
  end
end
