# frozen_string_literal: true

module Api
  module V1
    module ShowPostSerializer
      class PostSerializer < ApplicationSerializer
        attributes :id,
                   :title,
                   :contents,
                   :image

        has_one :category, serializer: CategorySerializer
      end
    end
  end
end
