class Api::ListUsersController < ApplicationController

  def create
    @list_user = ListUser.new(
      list_id: params[:list_id],
      user_id: current_user.id
    )
    @list_user.save
    render 'show.json.jbuilder'
  end

  def index
    @list_users = ListUser.all
    render 'index.json.jbuilder'
  end

end
