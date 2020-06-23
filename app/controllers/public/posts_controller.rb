class Public::PostsController < ApplicationController


  def index
    @post = Post.last
    @posts = Post.order(id: :desc).offset(1)
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.member_id = current_member.id
  	if @post.save!
  	redirect_to root_path
    else
    render "new"
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
    render "edit"
    end
  end

  def show
  	@post = Post.find(params[:id])
  end

  def destroy
  end

  def favorite
  end
  
  private
  def post_params
  	  params.require(:post).permit(:title, :content, :image, :post_genre_id, :member_id)
  end
end