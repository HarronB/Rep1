# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'students/index'
  # get 'students/show'
  # get 'teachers/index'
  # get 'teachers/show'
  # resources :houses            this would cretae all 7 restful routes, in this case though
  # we just need the 2 below.   NOTE: THIS AUTO CORRECTERCTS TO %i  formatting below
  resources :houses, only: %i[index show] # resources :houses, only: [:index, :show]
  resources :teachers, only: %i[index show]
  resources :students, only: %i[index show]

  # THE FOLLOWING IS THE MANUAL DECLARATION OF THE RESTFUL ROUTES. Howver with
  # the above resources statement, we can just do it that way
  # get 'houses', to: 'houses#index', as: 'houses'
  # get 'houses/:id',  to: 'houses#show', as: 'house'

  # GET / will load the index action of the houses controller.
  root to: 'houses#index' # same as saing the houses controllers index action
end
