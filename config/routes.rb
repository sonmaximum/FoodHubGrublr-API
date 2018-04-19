# frozen_string_literal: true

Rails.application.routes.draw do
  resources :order_items, except: %i[new edit]
  resources :carts, except: %i[new edit]
  resources :menu_items, except: %i[new edit]
  resources :menu_sections, except: %i[new edit]
  resources :menus, except: %i[new edit]
  resources :restaurant_cuisines, except: %i[new edit]
  resources :cuisines, only: %i[index show]
  resources :restaurants, except: %i[new edit]
  resources :charges, only: :create
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
