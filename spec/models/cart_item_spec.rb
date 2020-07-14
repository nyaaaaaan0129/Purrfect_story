# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CartItem, type: :model do
  let(:member) { create(:member) }
  let(:item) { create(:item) }
  let(:item_genre) { create(:item_genre) }
  let!(:cart_item) { create(:cart_item, member: member, item: item) }

  context 'test' do
    it '有効なカートアイテムの場合は保存されるか' do
      expect(FactoryBot.build(:cart_item)).to be_valid
    end
  end
  context '空白のバリデーションチェック' do
    it 'titleが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか' do
      cart_item = CartItem.new(number_of_items: '', item_id: 1)
      expect(cart_item).to be_invalid
      expect(cart_item.errors[:number_of_items]).to include("can't be blank")
    end
  end
end
