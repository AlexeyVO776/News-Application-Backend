require 'rails_helper'

RSpec.describe Api::BigNewsController, type: :request do
  describe "GET #index" do
    before do
      create_list(:big_news, 3, visible: true)
      get '/api/big_news'
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns all visible news" do
      json_response = JSON.parse(response.body)
      expect(json_response.size).to eq(3)
    end
  end

  describe "GET #show" do
    let(:news) { create(:big_news, visible: true) }

    before { get "/api/big_news/#{news.id}" }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns the correct news item" do
      json_response = JSON.parse(response.body)
      expect(json_response["id"]).to eq(news.id)
    end
  end

  describe "GET #latest_news" do
    let!(:newest_news) { create(:big_news, visible: true, created_at: 1.hour.ago) }
    let!(:older_news) { create(:big_news, visible: true, created_at: 1.day.ago) }

    before { get '/api/big_news/latest_news' }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns the latest news item" do
      json_response = JSON.parse(response.body)
      expect(json_response["id"]).to eq(newest_news.id)
    end
  end
end
