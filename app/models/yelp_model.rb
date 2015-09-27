require 'yelp'

class Yelp

  def initialize (location, yelp_hash, movie_params )
    @yelp_response = Yelp.client.search(location, yelp_hash)
    @movie_response = Swayze.new.random_movie
  end

  def merge
    yelp_array = []
    @yelp = @yelp_response["businesses"].each do |x|
      yelp_array << x["name"].to_s
    end
    yelp_array
  end

  def display
    d_array = []
    @yelp_response
    y = @yelp_response
    # y.each do |x|
    #   d_array << x["businesses"]["rating"].to_s
    # end#movie = @movie_response.sample
    # d_array
    #@yelp_array.inspect
    #@yelp_response
    #@swayze_movies
    #@yelp_response
    #@yelp_response
  end
end
