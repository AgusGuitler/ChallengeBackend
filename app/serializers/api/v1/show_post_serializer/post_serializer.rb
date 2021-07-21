module Api
    module V1
        module ShowPostSerializer
            class PostSerializer < ApplicationSerializer        
                attributes :id,
                           :title,
                           :contents,
                           :date_of_creation,
                           :image
                    
                has_one :category , serializer: CategorySerializer
            end
        end
    end
end