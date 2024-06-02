module Api
  class BigNewsController < ApplicationController
    def index
      @news = BigNews.where(visible: true).order(created_at: :desc)
      render json: @news
    end

    def show
      @news = BigNews.find(params[:id])
      render json: @news
    end

    def latest_news
      @latest_news = BigNews.where(visible: true).order(created_at: :desc).first
      render json: @latest_news
    end
  end
end
