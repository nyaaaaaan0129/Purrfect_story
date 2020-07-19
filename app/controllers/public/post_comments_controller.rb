# frozen_string_literal: true

class Public::PostCommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post_comment = PostComment.new(post_comment_params)
    @post_comment.member_id = current_member.id
    @post_comment.post_id = @post.id
    @post_comment.score = Language.get_data(post_comment_params[:comment])
    @post_comment.save!
    @post_comments = @post.post_comments
  end

  def destroy
    @post = Post.find(params[:id])
    @post_comment = PostComment.find_by(id: params[:post_id], post_id: params[:id]).destroy
    @post_comments = @post.post_comments
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:member_id, :post_id, :comment)
  end
end
