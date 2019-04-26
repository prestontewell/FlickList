class ListTitle < ApplicationRecord
  belongs_to :list

  def title
    @title = HTTParty.get("https://api.themoviedb.org/3/#{media_type}/#{title_id}?api_key=#{ENV["API_KEY"]}&language=en-US)&append_to_response=credits%2c%20videos")
    body = JSON.parse @title.body, symbolize_names: true
    return {body: body, media_type: media_type}
  end
end
