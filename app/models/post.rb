# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  
  acts_as_paranoid
  
  validates :title,
            :contents,
            :image,
            presence: true
  
  validates :image_url, format: {with: /\.(png|jpg)\Z/i}

  def user
    User.unscoped { super }
  end
          
  scope :for_title, -> (title) { where title: title }
  scope :for_category, -> (category) { where category: category }
end
