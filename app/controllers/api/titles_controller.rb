class Api::TitlesController < ApplicationController

  def index
    search = params[:search]
    @titles = HTTParty.get ("https://api.themoviedb.org/3/search/multi?api_key=#{ENV["API_KEY"]}&language=en-US&query=#{params[:search]}&page=1&include_adult=false")
    render json: @titles.body
  end

  def show
    media_type = params[:media_type]
    id = params[:id]
    @title = HTTParty.get ("https://api.themoviedb.org/3/#{params[:media_type]}/#{params[:id]}?api_key=#{ENV["API_KEY"]}&language=en-US&append_to_response=credits%2c%20videos")
    # body = JSON.parse @title.body, symbolize_names: true
    render json: @title
    # return {body: body, credits: credits}
  end 
  

end


