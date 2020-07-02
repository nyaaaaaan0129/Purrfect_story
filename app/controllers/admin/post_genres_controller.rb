# frozen_string_literal: true

class Admin::PostGenresController < ApplicationController
  before_action :authenticate_admin!
  def create
  	@post_genre = PostGenre.new(post_genre_params)
  	@post_genre.save
  	redirect_to admin_item_genres_path
  end

  def edit
  	@post_genre = PostGenre.find(params[:id])
  end

  def update
    @post_genre = PostGenre.find(params[:id])
  	if @post_genre.update(post_genre_params)
  	   redirect_to admin_item_genres_path
  	else
  	   render "edit"
  	end
  end


  private
  def post_genre_params
  	params.require(:post_genre).permit(:name, :valid_invalid_status)
  end
end
