require 'yelp'

class DinnerMovie

  def initialize (location, yelp_hash, movie_params )
    @yelp_response = Yelp.client.search(location, yelp_hash)
    @movie_response = Swayze.new.random_movie
  end

  def display

    # json.movie @movie_response.sample
    # json.dinner @yelp_response.businesses.sample.name

    y = @yelp_response.businesses.sample.name
    a = @yelp_response.businesses.sample.location.address

    m = @movie_response.sample
    choice = "Tonight's magical evening is brought to you by #{y}, #{a} and #{m}."

    #y = @yelp_response
    #m = @movie_response
    #{}"#{y} + #{m}"
    # y + m
    # choice + y + "and" m
    # y = @yelp_response.businesses.location.address
    #@yelp_response.businesses[0].name
    # y.each do |x|
    #   d_array << x["region"]["businesses"]["rating"].to_s
    # end#movie = @movie_response.sample
    # d_array

  end
end



# client.search('Park Slope', params, locale).businesses.each do |place|
#   italian_places[place.name] = {
#     :review_count => place.review_count,
#     :rating => place.rating,
#     :phone => place.phone}
# end
#p @yelp_response.merge
#d_movie = DinnerMovie.new().merge
