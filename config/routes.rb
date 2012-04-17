Aardvark::Application.routes.draw do

  get     '/question/:id'   => 'questions#show',    :as => :show
  get     '/question'       => 'questions#index',   :as => :index
  post    '/question'       => 'questions#create',  :as => :create
  put     '/question/:id'   => 'questions#update',  :as => :update
  delete  '/question/:id'   => 'questions#destroy', :as => :delete
  match   '/question'       => 'questions#create',  :via => :options
  match   '/question/:id'   => 'questions#update',  :via => :options

  post    '/tag'            => 'tags#create'
  delete  '/tag/:id'        => 'tags#destroy'
  match   '/tag'            => 'tags#create',       :via => :options
  match   '/tag/:id'        => 'tags#destroy',      :via => :delete

end
