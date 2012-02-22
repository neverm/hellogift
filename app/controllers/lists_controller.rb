# coding: utf-8
class ListsController < ApplicationController
	def create
		@title="Привет, подарок"
				
		
	end	

	def set_user_email
		if !params[:list][:user_email].blank?
			@l=List.find(params[:list]).keys
			@l.update_attribute(params[:user_email])
			flash[:notice]="Оk"
		else
			flash[:notice]="Error"	
		end	

		respond_to do |format|
		   format.js 
		end
	end	

end
