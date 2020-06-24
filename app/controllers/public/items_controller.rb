# frozen_string_literal: true

class Public::ItemsController < ApplicationController
  def new; end

  def index; end

  def show; end

  def create; end

  private
  def item_params
  	params.require(:item).permit(:genre_id, :item_name, :image, :explanation, :unit_price_without_tax, :sale_status)
  end
end