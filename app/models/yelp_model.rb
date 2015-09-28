require 'yelp'

class Yelp

  def initialize (location, yelp_hash, movie_params )
    @yelp_response = Yelp.client.search(location, yelp_hash)
    @movie_response = Swayze.new.random_movie
  end

  def display

  end
end
