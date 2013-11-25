class Idea < ActiveRecord::Base

	belongs_to :buyer
	belongs_to :artist

	has_many :images
	has_many :bids



end
