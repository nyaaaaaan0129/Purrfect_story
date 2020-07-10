require 'rails_helper'

RSpec.describe PostComment, type: :model do
  let(:member) { create(:member) }
  let(:post) { create(:post) }
	let!(:post_comment) { create(:post_comment, member: member, post: post) }
	describe '実際に保存してみる' do
	  context 'test' do
		  it "有効な投稿内容の場合は保存されるか" do
		    expect(FactoryBot.build(:post_comment)).to be_valid
		  end
		end
  	context "空白のバリデーションチェック" do
	    it "titleが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
	      post = PostComment.new(comment: '')
	      expect(post).to be_invalid
	      expect(post.errors[:comment]).to include("can't be blank")
	    end
  	end
  end
end
