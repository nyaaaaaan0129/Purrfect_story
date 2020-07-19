# frozen_string_literal: true

Rails.application.routes.draw do
  root 'public/homes#top'

  devise_for :members, controllers: {
    sessions: 'members/sessions',
    passwords: 'members/passwords',
    registrations: 'members/registrations'
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admin do
    get '/admins' => 'admins#top'
    put '/members/:id/destroy' => 'members#destroy'
    resources :items
    resources :item_genres
    resources :post_genres
    resources :posts do
      resources :post_comments, only: %i[create destroy]
    end
    resources :members
    resources :orders
    resources :order_items
  end

  namespace :public do
    delete '/cart_items/destroy_all' => 'cart_items#destroy_all'
    get '/public/about' => 'homes#about'
    get '/orders/thanks' => 'orders#thanks'
    get '/posts/favorite' => 'posts#favorite'
    get '/orders/confirm' => 'orders#confirm'
    post '/orders/confirm' => 'orders#confirm'
    get '/orders/thanks' => 'orders#thanks'
    get '/members/withdrawal' => 'members#withdrawal'
    put '/members/:id/destroy' => 'members#destroy'
    get '/posts/following_post' => 'posts#following_post'
    resources :items
    resources :item_genres
    resources :cart_items
    resources :post_genres
    resources :posts do
      resources :post_comments, only: %i[create destroy]
      resource :favorites, only: %i[create destroy]
    end
    resources :members, only: %i[edit update show] do
      get :following, :followers
    end
    resources :orders
    resources :order_items
    resources :relationships, only: [:create, :destroy]
  end
end
