Rails.application.routes.draw do
  root 'home#index'
  get 'surveys' => 'home#index'
  get 'new_survey' => 'home#new'
  post 'surveys' => 'home#create'
  get 'home/:id/edit' => 'home#edit', as: 'edit_survey'
  get 'home/:id' => 'home#show', as: 'survey'
  patch 'home/:id' => 'home#update'
  put 'home/:id' => 'home#update'
  delete 'home/:id' => 'home#destroy'


end
