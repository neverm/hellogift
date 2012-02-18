# coding: utf-8
class PagesController < ApplicationController
	def index
		session[:text]=nil	
		session[:list_text]=nil	
		@title="Привет, подарок"	
	end	
end
