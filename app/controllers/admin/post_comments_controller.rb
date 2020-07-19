# frozen_string_literal: true

class Admin::PostCommentsController < ApplicationController
	def destroy
		@post = Post.find(params[:id])
		@post_comment = @post.post_comments.find(params[:post_id])
		@post_comment.destroy
		redirect_to admin_post_path(@post)
	end
end
