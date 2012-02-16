# coding: utf-8
class ListsController < ApplicationController
	def new
		@title="Привет, подарок"
		#Генерим урл
		url=('a'..'z').to_a.shuffle[0..14].join

		check_bl_gifts=params[:text].join.blank?

		if !check_bl_gifts
			#Создаем и сохраняем лист подарков
			l=List.new(:text => params[:list_text], :url => url);
			l.save

			#Создаем подарки	
			params[:text].each do |text|
				if !text.blank? 
					l.gifts.create(:text => text) 
				end		
			end
			
			flash[:new_list_url]=url;
			redirect_to(new_list_path) 
			 
		else
			flash[:notice]="Должен быть добавлен хотя бы один подарок!"	
			redirect_to(root_path)	 
		end	

	end	

end
