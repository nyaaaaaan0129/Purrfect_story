# frozen_string_literal: true

class Public::HomesController < ApplicationController
  def top
    @posts = Post.order(id: :desc).limit(4)
  end

  def about; end
end
