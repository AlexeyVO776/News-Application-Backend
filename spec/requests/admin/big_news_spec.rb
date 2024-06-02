require 'rails_helper'

RSpec.describe "Admin::BigNews", type: :request do
  describe "GET /admin/big_news" do
    before do
      create_list(:big_news, 3) # Создает три объекта новостей
      get admin_big_news_index_path
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the index template with all news" do
      expect(response.body).to include("Sample News Title")
    end
  end

  describe "POST /admin/big_news" do
    context "with valid attributes" do
      let(:valid_attributes) { attributes_for(:big_news) }

      it "creates a new BigNews and redirects to the show page" do
        expect do
          post admin_big_news_index_path, params: { big_news: valid_attributes }
        end.to change(BigNews, :count).by(1)
        expect(response).to redirect_to(admin_big_news_path(BigNews.last))
      end
    end

    context "with invalid attributes" do
      it "does not create BigNews and re-renders the new template" do
        expect do
          post admin_big_news_index_path, params: { big_news: { title: nil } }
        end.to_not change(BigNews, :count)
        expect(response).to redirect_to(new_admin_big_news_path)
      end
    end
  end
end
