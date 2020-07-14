# frozen_string_literal: true

FactoryBot.define do
  factory :item_genre do
    name { 'test' }
    valid_invalid_status { 0 }
  end
end
