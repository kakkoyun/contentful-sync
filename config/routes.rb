# frozen_string_literal: true

Rails.application.routes.draw do
  root 'status#index'
  get '_status', to: 'status#index'

  resources :sync, only: [] do
    post :initial, on: :collection
    post :update, on: :collection
  end

  resources :entries, only: [:index]
end
