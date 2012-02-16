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
		
end
