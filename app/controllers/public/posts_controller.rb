# frozen_string_literal: true

class Public::PostsController < ApplicationController
  before_action :authenticate_member!, only: %i[edit new show]

  def index
    if params[:key] == '1'
      @post = current_member.posts.last
      @posts = current_member.posts.order(id: :desc).offset(1)
    elsif params[:key] == '2'
      @post = Member.find(params[:format]).posts.last
      @posts = Member.find(params[:format]).posts.order(id: :desc).offset(1)
    else
      @post = Post.last
      @posts = Post.order(id: :desc).offset(1)
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    if @post.save
      # tags = Vision.get_image_data(@post.image)
      # tags.each do |tag|
      #   @post.tags.create(name: tag)
      # end
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to public_post_path(@post)
    else
      render 'edit'
    end
  end

  def show
    @post = Post.find(params[:id])
    @post_comments = @post.post_comments
    @post_comment = PostComment.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to public_posts_path
  end

  def favorite
    @favorites = Favorite.where(member_id: current_member.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :post_genre_id, :member_id)
  end
end
