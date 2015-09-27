require 'yelp'

class DinnerMovie

  def initialize (location, yelp_hash, movie_params)
    @yelp_response = Yelp.client.search(location, yelp_hash)
    @movie_response = Swayze.new.random_movie
  end

  def display
    y = @yelp_response.businesses.sample.name
    m = @movie_response.sample
    dinner_movie_hash = { "movie" => m, "dinner" => y }
  end
end
