class Gift < ActiveRecord::Base
	#validates :text,  :presence => true
	validates_associated :list	
  	belongs_to :list
end
