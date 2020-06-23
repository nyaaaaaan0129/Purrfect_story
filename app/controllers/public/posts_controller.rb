class Public::PostsController < ApplicationController


  def index
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
  end

  def show
  	@post = Post.find(:id)
  end

  def destroy
  end

  def favorite
  end
  
  private
  def post_params
  	  params.require(:post).permit(:title, :content, :image_id, :post_genre_id, :member_id)
  end
end
