class Article < ApplicationRecord
	belongs_to :category
	has_many :reviews
	validates_presence_of :title, :body, :category_id, :publish_date
	validate :publish_date_cannot_be_more_than_30_days
	validate :publish_date_less_than_present_date



	def publish_date_cannot_be_more_than_30_days
		if publish_date.present? && publish_date > Date.today.next_month
			errors.add(:publish_date, "......")
		end
	end

	def publish_date_less_than_present_date
		if publish_date < Date.today
			is_published :enabled

		end
	end
end

