Hellogift::Application.routes.draw do
  #match "/new", :to => "Lists#new", :as => "new_list"
  #match "/set_user_email", :to => "Lists#set_user_email"
  resources :lists, :except => :destroy do
  	resources :gifts
  end
  
  match "/gifts/toggle-booked/:id", :to=> "Gifts#toggle_book"

  root :to => "Lists#new"
end
