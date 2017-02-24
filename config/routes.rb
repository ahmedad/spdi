Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :about
  devise_for :users, controllers: { registrations: 'registrations'}
  get 'about' => 'about#index'

  resources :pins do
    member do
      get "like", to: "pins#upvote"
      get "dislike", to: "pins#downvote"
    end 
  end

  root "pins#index"
end
