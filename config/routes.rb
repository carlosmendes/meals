Rails.application.routes.draw do
  get 'meals', to:'meals#index'
  get 'meals/new', to:'meals#new', as: :new_meal
  get 'meals/:id', to:'meals#show', as: :meal
  post '/meals', to: 'meals#create'
  get 'meals/:id/delete', to:'meals#destroy', as: :destroy
  get 'meals/:id/copy', to:'meals#copy', as: :copy

  root to: 'meals#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
