class Comment < ActiveRecord::Base
	belongs_to :post
	validates_presences_of :post_id
	validates_presences_of :body
end
