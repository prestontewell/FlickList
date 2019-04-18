class Api::ListsController < ApplicationController

  def index
    # @lists = List.all
    @lists = current_user.lists
    render "index.json.jbuilder"
  end

  def show
    @list = List.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @list = List.new(
      name: params[:name]
    )
    @list.save
    render "show.json.jbuilder"
  end

  def destroy
    @list = List.find_by(id:params[:id])
    @list.destroy
    render "destroy.json.jbuilder"
  end
      
end


