# frozen_string_literal: true

require "rails_helper"

describe "POST /api/v1/posts", type: :request do
  let(:endpoint) { post api_v1_posts_path, as: :json }

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
      expect(response).to have_http_status(:created)
    end

    it "posts with different id" do
      expect(first_post.id).not_to eq(second_post.id)
    end

    it "type of data" do
      expect(title).to be_a(String)
      expect(contents).to be_a(String)
      expect(image).to be_a(String)
    end
  end
end
