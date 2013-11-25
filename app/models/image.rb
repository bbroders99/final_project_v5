class Image < ActiveRecord::Base

	belongs_to :idea
	belongs_to :artist
	
end
