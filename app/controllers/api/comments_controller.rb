class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      body: params[:body],
      user_id: current_user.id,
      list_id: params[:list_id],
    )
    @comment.save
    render "show.json.jbuilder"
  end
end
