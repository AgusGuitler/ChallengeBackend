# frozen_string_literal: true

module Api
  module V1
    class PostSerializer < ApplicationSerializer
      attributes :id,
                 :title,
                 :image,
                 :category
    end
  end
end
