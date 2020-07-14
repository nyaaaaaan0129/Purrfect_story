# frozen_string_literal: true

FactoryBot.define do
  factory :post_comment do
    comment { 'test' }
    post { FactoryBot.create(:post) }
    member { FactoryBot.create(:member) }
  end
end
