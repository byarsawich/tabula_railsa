Rails.application.routes.draw do
  root 'home#form'
  get 'home/form'
  post 'surveys' => 'home#create'
  get 'home/form/:id' => 'home#show', as: 'survey'
end
