module Api
    module V1
        class PostSerializer < ApplicationSerializer
            attributes :id,
                       :title,
                       :image,
                       :category,
                       :date_of_creation             
        end
    end
end