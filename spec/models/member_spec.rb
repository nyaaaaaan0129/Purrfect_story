# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Member, type: :model do
  it '名前とメールアドレスとパスワードがあれば登録できる' do
    expect(FactoryBot.create(:member)).to be_valid
  end

  it '名前がなければ登録できない' do
    expect(FactoryBot.build(:member, last_name: '', first_name: '')).to_not be_valid
  end

  it 'メールアドレスがなければ登録できない' do
    expect(FactoryBot.build(:member, email: '')).to_not be_valid
  end

  it 'メールアドレスが重複していたら登録できない' do
    member1 = FactoryBot.create(:member, last_name: '田中', first_name: '太郎', email: 'taro@example.com')
    expect(FactoryBot.build(:member, last_name: '佐藤', first_name: '次郎', email: member1.email)).to_not be_valid
  end

  it 'パスワードがなければ登録できない' do
    expect(FactoryBot.build(:member, password: '')).to_not be_valid
  end

  it 'パスワードが暗号化されているか' do
    member = FactoryBot.create(:member)
    expect(member.encrypted_password).to_not eq 'password'
  end

  it 'password_confirmationとpasswordが異なる場合保存できない' do
    expect(FactoryBot.build(:member, password: 'password', password_confirmation: 'passward')).to_not be_valid
  end
end
