# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointments, only:[:index, :create, :update, :destroy]
  resources :doctors
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  # Added this line
  resources :patients, except: [:new, :edit]
  resources :doctors, except: [:new, :edit]
  # resources :patients, only: [:index, :show, :create, :update, :destroy]
end
