Hellogift::Application.routes.draw do
  #match "/new", :to => "Lists#new", :as => "new_list"
  #match "/set_user_email", :to => "Lists#set_user_email"
  resources :lists, :except => :destroy do
  	resources :gifts
  end
  
  root :to => "Pages#index"
end
