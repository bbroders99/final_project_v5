class Artist < ActiveRecord::Base

	has_many :ideas
	has_many :images
	has_many :bids


	#director has_many :movies

	#movie belongs_to :director 

	#movie has_many :actors, :through => :roles

end
