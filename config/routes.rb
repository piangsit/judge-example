Rails.application.routes.draw do

  mount Judge::Engine => '/judge'

  resources :users

  root 'users#new'
end
