require 'sidekiq/web'

Rails.application.routes.draw do

  get 'emails/unsubscribe'
  resources :projects do
    resources :tasks
  end

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  match "users/unsubscribe/:unsubscribe_hash" => "emails#unsubscribe", as: "unsubscribe", via: :all

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: "projects#index"
    end

    unauthenticated do
      root to: "home#index", as: :unauthenticated_root
    end
  end
end
