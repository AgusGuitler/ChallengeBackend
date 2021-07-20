class Post < ApplicationRecord
    belongs_to :category
    
    validates :title,
              :contents,
              :image,
              :date_of_creation,
              presence: true
end
