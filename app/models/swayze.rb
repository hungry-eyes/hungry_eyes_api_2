require 'httparty'
require 'byebug'
require 'json'

class Swayze
  attr_reader :swayze_movies, :pick
  def initialize
    @swayze_movies = get_movies
  end

  def get_movies
    HTTParty.get("http://netflixroulette.net/api/api.php?actor=Patrick%20Swayze")
  end

  def random_movie
    @pick = []
    swayze_movies.each do |m|
      @pick << m["show_title"]
    end
    @pick
  end
end

@pick
# tonights_movie = Swayze.new.random_movie.sample
# p tonights_movie
