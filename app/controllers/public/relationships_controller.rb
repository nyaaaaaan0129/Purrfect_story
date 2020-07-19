class Public::RelationshipsController < ApplicationController
	def create
    member = Member.find(params[:followed_id])
    current_member.follow(member)
    redirect_to public_member_path(member)
  end

  def destroy
    member = Relationship.find(params[:id]).followed
    current_member.unfollow(member)
    redirect_to public_member_path(member)
  end
end
