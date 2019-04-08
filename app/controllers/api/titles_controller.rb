class Api::TitlesController < ApplicationController

  def index
    search = params[:search]
    @titles = HTTP.get("https://api.themoviedb.org/3/search/multi?api_key=#{ENV["API_KEY"]}&language=en-US&query=#{params[:search]}&page=1&include_adult=false")
    render json: @titles.parse
  end  

end
