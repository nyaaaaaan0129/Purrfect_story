# frozen_string_literal: true

class Admin::OrdersController < ApplicationController
  def index
  	@orders = Order.all
  end

  def new; end

  def show
  	@order = Order.find(params[:id])
  	@order_item = @order.order_items
  end

  def update
  	params[:id] = params[:id].to_i
  	@order = Order.find(params[:id])
  	@order.update(order_params)
  	redirect_to admin_order_path(@order)
  end

  private
  def order_params
  	params.require(:order).permit(:order_status)
  end
end
