# frozen_string_literal: true

class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @path = Rails.application.routes.recognize_path(request.referer)
    @orders = if @path[:controller] == 'admin/members' && @path[:action] == 'show'
                Order.where(member_id: params[:format])
              elsif @path[:controller] == 'admin/admins' && params[:key] == '1'
                Order.where(created_at: Time.zone.today.all_day)
              else
                Order.all
              end
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
