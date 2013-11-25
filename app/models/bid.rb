class Bid < ActiveRecord::Base


	belongs_to :idea
	belongs_to :artist

end
