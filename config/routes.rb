Rails.application.routes.draw do
  resources :projects
  get 'dashboard/index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users
  
  resources :projects do
    resources :tasks
  end
  
  root 'dashboard#index'
end
