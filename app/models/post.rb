class Post < ApplicationRecord
    belongs_to :category

    validates :title,
              :contents,
              :image,
              :date_of_creation,
              presence: true
            
    scope :for_title, -> (title) { where title: title }
    scope :for_category, -> (category) { where category: category }
end
