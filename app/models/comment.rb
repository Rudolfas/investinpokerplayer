class Comment < ActiveRecord::Base
	belongs_to :post
	validate_presence_of :post_id
	validate_presence_of :body
end
