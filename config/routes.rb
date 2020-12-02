Rails.application.routes.draw do
  use_doorkeeper_openid_connect
  devise_for :members
  get 'session/new'
  get 'session/create'
  get 'session/verify'
  use_doorkeeper
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
