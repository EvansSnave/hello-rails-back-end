# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/get_greeting', to: 'greetings#random'
    end
  end
end
