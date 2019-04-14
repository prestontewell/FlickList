class Api::ListTitlesController < ApplicationController

  def create
    @list_title = ListTitle.new(
      list_id: params[:list_id],
      title_id: params[:title_id],
      media_type: params[:media_type]
    )
    @list_title.save
    render 'show.json.jbuilder'
  end

  def index
    @list_titles = ListTitle.all
    render 'index.json.jbuilder'
  end

end
