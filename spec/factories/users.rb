# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    password { Devise.friendly_token }
    sequence(:email) { |n| "user#{n}@test.com" }
  end
end
