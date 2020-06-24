# frozen_string_literal: true

class Admin::ItemGenresController < ApplicationController
  def index
  	@item_genres = ItemGenre.all
  end

  def create; end

  def edit; end

  def update; end
end
