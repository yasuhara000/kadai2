Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top' ,as: 'root'

  get 'todolists/index' => 'todolists#index' ,as:'books'
  get 'todolists/:id' => 'todolists#show', as:'book'

  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_book'
  post 'todolists' => 'todolists#create'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as:'destroy_todolist'



end
