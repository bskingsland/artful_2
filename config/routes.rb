Rails.application.routes.draw do
  # Routes for the Visit resource:
  # CREATE
  get "/visits/new", :controller => "visits", :action => "new"
  post "/create_visit", :controller => "visits", :action => "create"

  # READ
  get "/visits", :controller => "visits", :action => "index"
  get "/visits/:id", :controller => "visits", :action => "show"

  # UPDATE
  get "/visits/:id/edit", :controller => "visits", :action => "edit"
  post "/update_visit/:id", :controller => "visits", :action => "update"

  # DELETE
  get "/delete_visit/:id", :controller => "visits", :action => "destroy"
  #------------------------------

  # Routes for the Space resource:
  # CREATE
  get "/spaces/new", :controller => "spaces", :action => "new"
  post "/create_space", :controller => "spaces", :action => "create"

  # READ
  get "/spaces", :controller => "spaces", :action => "index"
  get "/spaces/:id", :controller => "spaces", :action => "show"

  # UPDATE
  get "/spaces/:id/edit", :controller => "spaces", :action => "edit"
  post "/update_space/:id", :controller => "spaces", :action => "update"

  # DELETE
  get "/delete_space/:id", :controller => "spaces", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'sites#index'

end
