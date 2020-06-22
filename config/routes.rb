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
    resources :items
    resources :item_genres
    resources :post_genres
    resources :posts do
      resources :post_comments, only: %i[create destroy]
      resource :favorites, only: %i[create destroy]
    end
    resource :members
    resources :orders
    resources :order_items
  end
end
