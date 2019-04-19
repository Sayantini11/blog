class Review < ApplicationRecord
	belongs_to :article
	belongs_to :user
	validates_presence_of :body, :article_id, :rating, :user_id, :username
	validates_length_of :body, within: 10...1000
end
