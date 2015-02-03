class CommentsController < ApplicationController
	def new
		@comments = Comment.all
	end

	def create
		Comment.create!(comment_params)
		redirect_to new_comment_path
	end

	private

	def comment_params
		params.require(:comment).permit(:username, :text)
	end
end
