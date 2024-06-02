module Admin
  class BigNewsController < ApplicationController
    before_action :set_big_news, only: [:edit, :update, :show, :destroy]

    def index
      @big_news = BigNews.all
    end

    def show; end

    def new
      @big_news = BigNews.new
    end

    def create
      @big_news = BigNews.new(big_news_params)
      if @big_news.save
        flash[:success] = "Новость успешно добавлена."
        redirect_to admin_big_news_path(@big_news)
      else
        flash[:error] = @big_news.errors.full_messages.join(", ")
        redirect_to new_admin_big_news_path
      end
    end

    def edit; end

    def update
      if @big_news.update(big_news_params)
        flash[:success] = "Новость успешно обновлена."
        redirect_to admin_big_news_path(@big_news)
      else
        flash[:error] = @big_news.errors.full_messages.join(", ")
        redirect_to edit_admin_big_news_path(@big_news)
      end
    end

    def destroy
      if @big_news.destroy
        flash[:success] = "Новость успешно удалена."
      else
        flash[:error] = "Не удалось удалить новость."
      end
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
