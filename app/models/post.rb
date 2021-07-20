class Post < ApplicationRecord

    validates :title,
              :contents,
              :image,
              :date_of_creation,
              presence: true
end
