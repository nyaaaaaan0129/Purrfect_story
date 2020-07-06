# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :member
  has_many :order_items, dependent: :destroy
  enum payment_method: { 銀行振込: 0, クレジットカード: 1 }

  enum order_status: { 入金待ち: 0, 入金確認: 1, 発送準備中: 2, 発送済: 3 }
end
