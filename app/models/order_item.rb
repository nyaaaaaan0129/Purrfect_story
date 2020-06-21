class OrderItem < ApplicationRecord

	belongs_to :cart_item
	belongs_to :order
end
