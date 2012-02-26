# coding: utf-8
class ListsController < ApplicationController
	
	def new
		@title="Привет, подарок"	
		@list = List.new
  		3.times { @list.gifts.build }
	end	

	def create
		@title="Привет, подарок"
		@url=('a'..'z').to_a.shuffle[0..17].join
		params[:list][:url] = @url	
		@list = List.new(params[:list])
		
		if @list.save
			@lnk_to_list="#{request.domain}/#{@url}"	
		end	
	end	

	def update
		@list=List.find(params[:id])
		@list.update_attributes(params[:list])
		flash[:em_info]="На ваш e-mail отправлена ссылка для редактирования списка подарков"

		respond_to do |format|
			format.html
		   	format.js 
		end
	end	

	def show
		@list=List.find(params[:id])
	end	

end
