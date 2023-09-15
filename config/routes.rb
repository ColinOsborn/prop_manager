Rails.application.routes.draw do
  mount ImageUploader::UploadEndpoint => 'images/upload'
  devise_for :users, :controllers => { :registrations => 'registrations' }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'home#index'
  resources :violations
end
