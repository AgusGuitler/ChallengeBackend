# frozen_string_literal: true

module Api
  module V1
    class PostsController < ApplicationController
      def index
        render json: posts, each_serializer: PostSerializer, status: :ok
      end

      def show
        post

        render json: post, serializer: ShowPostSerializer::PostSerializer, status: :ok
      end

      def update
        post.category = associated_category

        if post.update(update_post_params)
          render json: post, serializer: ShowPostSerializer::PostSerializer, status: :ok
        else
          render json: { error: "We can't update the data" }, status: :unprocessable_entity
        end
      end

      def create
        create_post = Post.new(creation_post_params)

        create_post.category = associated_category
        if create_post.save
          render json: create_post, serializer: ShowPostSerializer::PostSerializer, status: :created
        else
          render json: { error: "We can't save your post" }, status: :unprocessable_entity
        end
      end

      def destroy
        if post.present?
          post.destroy
        end

        head :no_content
      end

        private
          def posts
            @posts ||= fetch_posts
          end

          def fetch_posts
            posts = Post.all.order(created_at: :desc)
            posts = posts.for_title(title) if title
            posts = posts.for_category(category) if category
            posts
          end

          def title
            params[:title]
          end

          def category
            params[:category]
          end

          def post
            @post ||= Post.find(params[:id])
          end

          def update_post_params
            params.permit(
                :title,
                :contents,
                :image
              )
          end

          def associated_category
            @associated_category ||= Category.find_by(name: params[:category])
          end

          def creation_post_params
            params.permit(
                :title,
                :contents,
                :image
              )
          end
    end
  end
end
