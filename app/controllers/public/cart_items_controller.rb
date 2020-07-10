# frozen_string_literal: true

class Public::CartItemsController < ApplicationController
  before_action :authenticate_member!
  def index
    @cart_items = current_member.cart_items
    @total = 0
  end

  def create
    if current_member.cart_items.count >= 1 # カート内に商品があるか？
      if current_member.cart_items.find_by(item_id: params[:cart_item][:item_id]) != nil
        @cart_item_u = current_member.cart_items.find_by(item_id: params[:cart_item][:item_id])
        @cart_item_u.number_of_items += params[:cart_item][:number_of_items].to_i
        @cart_item_u.update(number_of_items: @cart_item_u.number_of_items)
        redirect_to public_cart_items_path
      else
        @cart_item = CartItem.new(cart_item_params)
        @cart_item.member_id = current_member.id
        if @cart_item.save
        redirect_to public_cart_items_path
        else
         @item = Item.find(params[:cart_item][:item_id].to_i)
      render "public/items/show"
      end
        end
    else
      @cart_item = CartItem.new(cart_item_params)
      @cart_item.member_id = current_member.id
      if @cart_item.save
      redirect_to public_cart_items_path
      else
      @item = Item.find(params[:cart_item][:item_id].to_i)
      render "public/items/show"
      end
  end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to public_cart_items_path
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to public_cart_items_path
  end

  def destroy_all
    @cart_items = current_member.cart_items
    @cart_items.destroy_all
    redirect_to public_cart_items_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:number_of_items, :item_id, :member_id)
  end
end
