# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:member) { create(:member) }
  let!(:post) { create(:post, member: member) }
  describe '実際に保存してみる' do
    context 'test' do
      it '有効な投稿内容の場合は保存されるか' do
        expect(FactoryBot.build(:post)).to be_valid
      end
    end
    context '空白のバリデーションチェック' do
      it 'titleが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか' do
        post = Post.new(title: '', content: '<p>test post</p>')
        expect(post).to be_invalid
        expect(post.errors[:title]).to include("can't be blank")
      end
      it 'bodyが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか' do
        post = Post.new(title: 'hoge', content: '')
        expect(post).to be_invalid
        expect(post.errors[:content]).to include("can't be blank")
      end
    end
  end
end
