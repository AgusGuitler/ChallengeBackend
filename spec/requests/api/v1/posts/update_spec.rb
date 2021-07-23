# frozen_string_literal: true

require "rails_helper"

describe "PUT /api/v1/posts", type: :request do
  let(:endpoint) { put api_v1_posts_path, as: :json }

  let(:user) { create(:user) }
  let(:any_category) { create(:category) }

  let!(:first_post) { create(:post, user: user, category: any_category) }

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

    it "type of data" do
      expect(title).to be_a(String)
      expect(contents).to be_a(String)
      expect(image).to be_a(String)
    end

    it "return the same post but actuallizated" do
      expect(data.first["id"]).to eq(first_post.id)
    end
  end
end
