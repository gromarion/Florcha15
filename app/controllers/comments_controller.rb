class CommentsController < ApplicationController
	def index
		fetch_comments
	end

	def new
		fetch_comments
	end

	def create
		params[:comment][:text] = Obscenity.sanitize(params[:comment][:text])
		Comment.create!(permit_comment_params)
		redirect_to new_comment_path
	end

	private

	def permit_comment_params
		params.require(:comment).permit(:username, :text)
	end

	def fetch_comments
		@comments = Comment.all.order(created_at: 'DESC')
		@comments = [] if @comments == nil
	end
end
