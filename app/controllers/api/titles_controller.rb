class Api::TitlesController < ApplicationController

  def index
    @titles = HTTP.get("https://api.themoviedb.org/3/search/multi?api_key=e264b0e591a1bc218e794423d31f4274&language=en-US&query=The%20Lord%20of%20the%20Rings&page=1&include_adult=false")
    render json: @titles.parse
  end  

end
