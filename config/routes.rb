Rails.application.routes.draw do
  root 'status#index'
  get '_status', to: 'status#index'
end
