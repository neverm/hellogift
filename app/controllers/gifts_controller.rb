class GiftsController < ApplicationController

	def toggle_book
		gift=Gift.find(params[:id])
		
		if gift.booked == 1
			gift.booked = 0
			gift.save

		elsif gift.booked == 0
			gift.booked = 1
			gift.save

		else	
			gift.booked = 1
			gift.save
		end

		render :nothing => true
	end
	
end
