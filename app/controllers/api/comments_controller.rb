class Api::CommentsController < ApplicationController

  def index
    @comments = current_user.comments
    render "index.json.jbuilder"
  end

  def show
    @comment = Comment.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @comment = Comment.new(
      body: params[:body],
      username: current_user.username,
      user_id: current_user.id,
      list_id: params[:list_id],
    )
    @comment.save
    render 'show.json.jbuilder'
  end
end

  
  
