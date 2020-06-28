# frozen_string_literal: true

class Admin::ItemGenresController < ApplicationController
  def index
  	@item_genres = ItemGenre.all
  	@post_genres = PostGenre.all
  	@item_genre = ItemGenre.new
  	@post_genre = PostGenre.new
  end

  def create
  	@item_genre = ItemGenre.new(item_genre_params)
  	@item_genre.save!
  	redirect_to admin_item_genres_path
  end

  def edit
  	@item_genre = ItemGenre.find(params[:id])
  end

  def update
    @item_genre = ItemGenre.find(params[:id])
    @item_genre.update(item_genre_params)
    redirect_to admin_item_genres_path
  end

  def update; end
  private
  def item_genre_params
  	params.require(:item_genre).permit(:name, :valid_invalid_status)
  end
end
