class ReviewsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource

	def create
		@review = Review.new(review_params)
        @review.user_id = current_user.id 
        @review.username = current_user.username
		if @review.save
			redirect_to article_path(@review.article_id), notice: "Thank your for adding your review"
		end
	end

	 def destroy 
	 	@review = Review.find(params[:id])
	 	@review.destroy
	 	redirect_to article_path(@review.article_id), notice: "You have successfully deleted the review"

	 end

	private

	def review_params
		params[:review].permit(:body, :rating, :article_id)
	end

end
