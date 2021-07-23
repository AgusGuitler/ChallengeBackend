# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { "MyString" }
    content { "MyString" }
    image { "MyString.jpg" }
    category
    user
  end
end
