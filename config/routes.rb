Rails.application.routes.draw do
  get 'search/list'

  root 'welcomes#index'

  get 'details/:id' => 'details#index'

  get 'search/list'
end
