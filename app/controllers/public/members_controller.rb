# frozen_string_literal: true

class Public::MembersController < ApplicationController
  def index; end

  def new; end

  def create; end

  def edit
  	@member = Member.find(params[:id])
  end

  def update
  	@member = Member.find(params[:id])
  	if @member.update(member_params)
  	redirect_to public_member_path(current_member.id)
    else
    render "edit"
    end
  end

  def show
  	@member = Member.find(params[:id])
  end

  def destroy; end

  def withdrawal; end

  private
  def member_params
  	params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :nickname, :email, :phone_number, :postal_code, :address)
  end
end
