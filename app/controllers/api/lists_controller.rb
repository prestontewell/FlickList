class Api::ListsController < ApplicationController

  def index
    @lists = List.all
    render "index.json.jbuilder"
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


