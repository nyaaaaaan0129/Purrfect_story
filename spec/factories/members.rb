# frozen_string_literal: true

FactoryBot.define do
  factory :member do
    last_name { '吉田' }
    first_name { '隆' }
    sequence(:email) { |n| "taka#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
