Hellogift::Application.routes.draw do

  root :to => "Pages#index"
  match "/new", :to => "Lists#new", :as => "new_list"

 
end
