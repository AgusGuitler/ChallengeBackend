# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { "MyString" }
    contents { "MyString" }
    image { "MyString.jpg" }
    category
    user
  end
end
