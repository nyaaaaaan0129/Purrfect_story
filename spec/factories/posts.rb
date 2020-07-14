# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { 'test' }
    content { '<p>test</p>' }
  end
end
