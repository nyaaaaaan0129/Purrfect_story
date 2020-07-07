# frozen_string_literal: true

class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @path = Rails.application.routes.recognize_path(request.referer)
    if @path[:controller] == "admin/members" && @path[:action] == "show"
      @posts = Post.where(member_id: params[:format])
    elsif @path[:controller] == 'admin/admins' && params[:key] == "1"
      @posts = Post.where(created_at: Time.zone.today.all_day)
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
    @post_comments = @post.post_comments
  end

end
