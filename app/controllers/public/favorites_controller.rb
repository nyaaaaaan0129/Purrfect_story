# frozen_string_literal: true

class Public::FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    favorite = Favorite.new(post_id: @post.id)
    favorite.member_id = current_member.id
    favorite.save
  end

  def destroy
    @post = Post.find(params[:post_id])
    favorite = current_member.favorites.find_by(post_id: @post.id)
    favorite.destroy
  end
end
