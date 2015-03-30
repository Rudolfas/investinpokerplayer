class Comment < ActiveRecord::Base
	belongs_to :post
	validate_presence_of :title
	validate_presence_of :body
end
