Rails.application.routes.draw do
  get 'lists/new'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'list/:id' => 'lists#update', as: 'update_list'
  delete 'lists/:id' => 'lists#destroy',as: 'destroy_list'
  get 'homes/top'
  get '/top' => "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
