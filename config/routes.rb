Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root  'mysite#home'
  get 'about', to: 'mysite#about'
  resources  :articles
  get 'signup', to:'users#new'
  resources :users, except: [:new]
end
