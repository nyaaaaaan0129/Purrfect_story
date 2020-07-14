# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:member) { create(:member) }
  let!(:order) { create(:order, member: member) }
  describe '実際に保存してみる' do
    context 'test' do
      it '有効な投稿内容の場合は保存されるか' do
        expect(FactoryBot.build(:order)).to be_valid
      end
    end
  end
end
