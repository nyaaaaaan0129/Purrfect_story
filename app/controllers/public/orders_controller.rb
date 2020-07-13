# frozen_string_literal: true

class Public::OrdersController < ApplicationController
  before_action :authenticate_member!
  before_action :request_post?, only: [:confirm]
  before_action :order_new?, only: [:new]

  def index
    @path = Rails.application.routes.recognize_path(request.referer)
    if @path[:controller] == "public/members" && @path[:action] == "show"
       @orders = Order.where(member_id: params[:format])
    else
      @orders = Order.all
    end
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.member_id = current_member.id
    @order.save!

    current_member.cart_items.each do |cart_item|
      @order_item = OrderItem.new
      @order_item.item_id = cart_item.item_id
      @order_item.number_of_items = cart_item.number_of_items
      @order_item.items_tax_included_price = (cart_item.item.unit_price_without_tax * 1.1).floor
      @order_item.order_id = @order.id
      @order_item.save
    end

    current_member.cart_items.destroy_all
    redirect_to public_orders_thanks_path
  end

  def confirm
    params[:order][:payment_method] = params[:order][:payment_method].to_i
    @order = Order.new(order_params)
    if params[:order][:address_number] == '1'
      @order.postal_code = current_member.postal_code
      @order.address = current_member.address
      @order.name = current_member.last_name + current_member.first_name
    elsif params[:order][:address_number] == '2'
      @order.postal_code = Member.find(params[:order][:address]).postal_code
      @order.address = Member.find(params[:order][:address]).address
      @order.name = Member.find(params[:order][:address]).last_name + Member.find(params[:order][:address]).first_name
      @order.nickname = Member.find(params[:order][:address]).nickname
    else
      render 'new'
    end
    @cart_items = CartItem.all
    @total = 0
  end

  def thanks; end

  private

  def order_params
    params.require(:order).permit(:payment_method, :address, :postage, :postal_code, :name, :total_fee, :nickname)
  end

  def order_new?
    redirect_to public_cart_items_path, notice: "カートに商品を入れてください。" if current_member.cart_items.blank?
  end

  def request_post?
    redirect_to new_public_order_path, notice: "もう一度最初から入力してください。" unless request.post?
  end
end
