# frozen_string_literal: true

class Public::ItemsController < ApplicationController
  def new; end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def create; end

  def search
    @items = Item.where(item_genre_id: params[:format])
    render "index"
  end

  private

  def item_params
    params.require(:item).permit(:genre_id, :item_name, :image, :explanation, :unit_price_without_tax, :sale_status)
  end
end
