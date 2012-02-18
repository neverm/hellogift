# coding: utf-8
class ListsController < ApplicationController
	def new
		@title="Привет, подарок"
				
		if params[:text].nil? && session[:text].nil?
			flash[:notice]="Сначала создайте список подарков!"	
			redirect_to(root_path)	
				
		elsif !params[:text].nil? && session[:text].nil?
			session[:list_text]=params[:list_text]
			session[:text]=params[:text]

			redirect_to(new_list_path)

		elsif params[:text].nil? && !session[:text].nil?	 
			if !session[:text].join.blank?
				url=('a'..'z').to_a.shuffle[0..14].join
				@l=List.new(:text => session[:list_text], :url => url)
				@l.save

				session[:text].each do |text|
					@l.gifts.create(:text => text)
				end
				session[:list_url]=url	

				session[:text] = nil
				session[:list_text] = nil

			else
				flash[:notice]="Должен быть добавлен хотя бы один подарок!"	
				redirect_to(root_path)		
			end	
					
		end	
	end	

	def set_user_email
		if !params[:list][:user_email].blank?
			
		end	
	end	

end
