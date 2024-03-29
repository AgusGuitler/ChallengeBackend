# frozen_string_literal: true

require "rails_helper"

describe "GET /api/v1/posts", type: :request do
  let(:endpoint) { get api_v1_posts_path, as: :json }

  let(:user) { create(:user) }
  let(:any_category) { create(:category) }

  let!(:first_post) { create(:post, user: user, category: any_category) }
  let!(:second_post) { create(:post, user: user, category: any_category) }

  context "when user not log in" do
    before do
      endpoint
    end

    it "fails" do
      expect(response).to have_http_status(:unauthorized)
    end
  end

  context "when user already login" do
    before { sign_in(user) }

    before do
      endpoint
    end

    it "succeeds" do
      expect(response).to have_http_status(:ok)
    end

    it "return all posts" do
      expect(data.size).to eq(2)
    end

    it "order the posts from last to first" do
      expect(data.first["id"]).to eq(second_post.id)
      expect(data.second["id"]).to eq(first_post.id)
    end
  end
end
