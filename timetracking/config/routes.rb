Rails.application.routes.draw do
  root to: 'site#home'
  
  resources :projects, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
  	resources :entries, only: [:index, :new, :create, :destroy] 
  end

  # get 'contact'=> 'site#contact'
  # get 'projects' => 'projects#index'
  # get 'projects/new' => 'projects#new'
  # post 'projects' => 'projects#create'
  # get 'projects/:id' => 'projects#show', as: 'project'
  # get 'projects/:id/edit' => 'projects#edit'
  # patch 'projects/:id' => 'projects#update'
  # delete 'projects/:id' => 'projects#destroy'
  # get 'projects/:project_id/entries' => 'entries#index'
  # get 'projects/:project_id/entries/new' => 'entries#new'
end
