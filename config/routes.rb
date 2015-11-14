Rails.application.routes.draw do
  root 'welcomes#index'

  get 'details/:id' => 'details#index', as: :details

  get 'search/list'
end
