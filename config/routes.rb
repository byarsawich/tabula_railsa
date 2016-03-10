Rails.application.routes.draw do
  root 'home#new'
  get 'home/new'
  post 'surveys' => 'home#create'
  get 'home/:id' => 'home#show', as: 'survey'
end
