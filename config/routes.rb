Aardvark::Application.routes.draw do

  get     '/question/:id'   => 'questions#show',    :as => :show
  get     '/question'       => 'questions#index',   :as => :index
  post    '/question'       => 'questions#create',  :as => :create
  put     '/question/:id'   => 'questions#update',  :as => :update
  delete  '/question/:id'   => 'questions#destroy', :as => :delete

end
