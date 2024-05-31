module Admin
  class BigNewsController < ApplicationController
    before_action :set_big_news, only: [:edit, :update, :show, :destroy]

    def index
      @big_news = BigNews.all
    end

    def show
      @big_news = BigNews.find(params[:id])
    end

    def new
      @big_news = BigNews.new
    end

    def create
      @big_news = BigNews.new(big_news_params)
      if @big_news.save
        redirect_to admin_big_news_path(@big_news)
      else
        render :new
      end
    end

    def edit
      @big_news = BigNews.find(params[:id])
    end

    def update
      @big_news = BigNews.find(params[:id])
      if @big_news.update(big_news_params)
        redirect_to admin_big_news_path(@big_news)
      else
        render :edit
      end
    end

    def destroy
      @big_news = BigNews.find(params[:id])
      @big_news.destroy
      redirect_to admin_big_news_index_path
    end

    private

    def set_big_news
      @big_news = BigNews.find(params[:id])
    end

    def big_news_params
      params.require(:big_news).permit(:title, :content, :image, :visible)
    end
  end
end
