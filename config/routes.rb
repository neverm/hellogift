Hellogift::Application.routes.draw do

  root :to => "Pages#index"
  match "/new", :to => "Lists#new", :as => "new_list"
  match "/set_user_email", :to => "Lists#set_user_email"
end
