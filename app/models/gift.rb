class Gift < ActiveRecord::Base
	validates :text,  :presence => true	
  	belongs_to :list
  	validates_associated :list
end
