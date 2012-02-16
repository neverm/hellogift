<<<<<<< HEAD
# coding: utf-8
module ApplicationHelper
	def title
	    default_title = "Привет, подарок!"
	    if @title.nil?
	      default_title
	    else
	      "#{default_title}"
	    end
	end
	
	def show_flash
		if flash[:notice]
	    	content_tag(:div, flash[:notice], :class => 'notice')
	    end	
	 end
		
=======
module ApplicationHelper
>>>>>>> 9b8c3c65153097d1c7894f5a1bb22d8f43ad5183
end
