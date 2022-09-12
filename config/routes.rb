# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :messages
    end
  end
  root 'root#index'
  get '*path', to: 'root#index', via: :all
end
