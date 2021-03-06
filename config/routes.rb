Rails.application.routes.draw do
  devise_for :users, path: '',path_names: {sign_in: 'login', sign_up: 'register', sign_out: 'logout'}
  resources :portfolios
  get 'angular-item' , to: 'portfolios#angular'
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact' ,to: 'pages#contact'
  resources :blogs do 
    member do
      get :toggle_status
    end
  end
end