# frozen_string_literal: true

require "rails_helper"

describe "DELETE /api/v1/posts/id", type: :request do
  let(:endpoint) { delete api_v1_posts_id_path, as: :json }

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
      expect(response).to have_http_status(:no_content)
    end
  end
end
