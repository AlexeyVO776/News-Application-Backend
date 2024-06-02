Rails.application.routes.draw do
  namespace :api do
    resources :big_news, only: [:index, :show] do
      collection do
        get :latest_news
      end
    end
  end

  namespace :admin do
    resources :big_news
  end
end
