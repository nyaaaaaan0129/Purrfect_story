# frozen_string_literal: true

class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    @total = 0
  end

  def create
  	@cart_item = CartItem.new(cart_item_params)
  	@cart_item.member_id = current_member.id
  	@cart_item.save
  	redirect_to public_cart_items_path
  end

  def destroy; end

  def update
  	@cart_item = CartItem.find(params[:id])
  	@cart_item.update(cart_item_params)
    redirect_to public_cart_items_path
  end

  private
  def cart_item_params
  	params.require(:cart_item).permit(:number_of_items, :item_id, :member_id)
  end
end
