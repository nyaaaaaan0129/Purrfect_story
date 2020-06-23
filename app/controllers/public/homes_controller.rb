class Public::HomesController < ApplicationController

  def top
  	@posts = Post.order(created_at: :asc).limit(4)
  end


end
