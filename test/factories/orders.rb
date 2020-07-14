# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    postage { 800 }
    payment_method { 1 }
    address { 'test' }
    postal_code { '12345' }
    name { 'test' }
    total_fee { 3000 }
    order_status { 0 }
    nickname { 'test' }
    member { FactoryBot.create(:member) }
  end
end
