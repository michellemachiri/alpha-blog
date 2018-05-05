Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # get 'pages/home', to: 'pages#home'
  get  'pages/about', to: 'pages#about'
  root 'pages#home'
# a new article path, a post, to create articles. a patch to edit articles,  edit, show, delete and index path. we get that from this one line
  resources :articles

  get 'signup', to: 'users#new'
 post 'users', to: 'users#create'
#resources :users, except: [:new]
end
