class Api::TitlesController < ApplicationController

  def index
    search = params[:search]
    @titles = HTTParty.get ("https://api.themoviedb.org/3/search/multi?api_key=#{ENV["API_KEY"]}&language=en-US&query=#{params[:search]}&page=1&include_adult=false"), format: :plain
    render json: @titles.body
  end  

end
