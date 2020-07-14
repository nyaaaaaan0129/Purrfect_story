# frozen_string_literal: true

require 'rails_helper'

describe '投稿のテスト' do
  let(:member) { create(:member) }
  let!(:post) { create(:post, member: member) }
  before do
    visit new_member_session_path
    fill_in 'member[email]', with: member.email
    fill_in 'member[password]', with: member.password
    click_button 'Log in'
  end
  describe 'テスト' do
    context '表示の確認' do
      before do
        visit new_public_post_path
        fill_in 'post[title]', with: ''
      end
      it 'エラーメッセージは正しく表示されるか' do
        find("input[name='commit']").click
        expect(page).to have_content "can't be blank"
      end
      it 'bodyが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか' do
        post = Post.new(title: 'hoge', content: '')
        expect(post).to be_invalid
        expect(post.errors[:content]).to include("can't be blank")
      end
      scenario 'エラーメッセージは正しく表示されるか' do
        find("input[name='commit']").click
        expect(page).to have_content "can't be blank"
      end
      scenario 'エラーメッセージは正しく表示されるか' do
        find("input[name='commit']").click
        expect(page).to have_content "can't be blank"
      end
    end
  end
end
