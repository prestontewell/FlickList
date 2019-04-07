class ListTitle < ApplicationRecord
  belongs_to :list

  def title
    @title = HTTP.get("https://api.themoviedb.org/3/movie/#{title_id}?api_key=e264b0e591a1bc218e794423d31f4274&language=en-US)")
    @title.parse
  end

end
