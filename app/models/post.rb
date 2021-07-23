# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  
  validates :title,
            :contents,
            :image,
            presence: true

  scope :for_title, -> (title) { where title: title }
  scope :for_category, -> (category) { where category: category }
end
