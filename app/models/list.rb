class List < ActiveRecord::Base
	#attr_accessible :text, :url, :user_email
	has_many :gifts	
	accepts_nested_attributes_for :gifts, :reject_if => proc { |attributes| attributes['text'].blank? }
end
