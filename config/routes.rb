Rails.application.routes.draw do


  get '/tasks/new', to:'task#new' #toadd

  get '/tasks/:id', to:'task#show', as: :task #to find with the ID

  get '/tasks', to:'task#index' #to list
  post '/tasks', to:'task#create' #tocreate

  get '/tasks/:id/edit', to:'task#edit', as: :edit_task #topost

  patch '/tasks/:id', to:'task#update' #to update

  delete '/tasks/:id', to:'task#destroy', as: :destroy_task #todelete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
