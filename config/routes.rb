Rails.application.routes.draw do
  devise_for :users, :controller => { registrations: 'registrations'}
  resources :comments
  get '/pages/info' => 'pages#info'
  root 'ideas#index'

  resources :ideas
  resources :comments
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
