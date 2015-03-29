class Comment < ActiveRecord::Base
	belongs_to :post
	validates_presence_of :title
	validates_presence_of :body
end
