Rails.application.routes.draw do
  namespace :api do
    resources :big_news, only: [:index, :show]
  end

  namespace :admin do
    resources :big_news
  end
end
