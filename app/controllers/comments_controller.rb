class CommentsController < ApplicationController
	def new
		fetch_comments
	end

	def create
		params[:comment][:text] = Obscenity.sanitize(params[:comment][:text])
		Comment.create!(
			username: current_user.full_name,
			text: params[:comment][:text]
		)
		redirect_to comments_new_path
	end

	private

	def fetch_comments
		@comments = Comment.all.order(created_at: 'DESC').page params[:page]
		@comments = [] if @comments == nil
	end
end
