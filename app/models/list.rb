class List < ActiveRecord::Base
	attr_accessible :text, :url, :user_email
	has_many :gifts	

	def new
		@list
	end	
end
