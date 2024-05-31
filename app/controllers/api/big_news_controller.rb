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
  end
end