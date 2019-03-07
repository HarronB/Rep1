# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages
  # get 'students/index'
  # get 'students/show'
  # get 'teachers/index'
  # get 'teachers/show'
  # resources :houses            this would cretae all 7 restful routes, in this case though
  # we just need the 2 below.   NOTE: THIS AUTO CORRECTERCTS TO %i  formatting below
  resources :houses, only: %i[index show] # resources :houses, only: [:index, :show]
  resources :teachers, only: %i[index show]
  resources :students, only: %i[index show]

  # we will create a custom route, or a get request for the use of created permalinks.
  # get static/:permalinkPlaceHolder. The actual permalink       < 'permalink/:permalink'>
  # then route that to: the  pages contoller and references an action that does not yet exist called permalink. <to: 'pages#permalink'>
  get 'static/:permalink', to: 'pages#static', as: 'static' # *as: 'static' names the route. So accessable by static_path

  # THE FOLLOWING IS THE MANUAL DECLARATION OF THE RESTFUL ROUTES. Howver with
  # the above resources statement, we can just do it that way
  # get 'houses', to: 'houses#index', as: 'houses'
  # get 'houses/:id',  to: 'houses#show', as: 'house'

  # GET / will load the index action of the houses controller.
  root to: 'houses#index' # same as saing the houses controllers index action
end
