class Article < ApplicationRecord
	# attr_accessor :image
	has_one_attached :image
end
