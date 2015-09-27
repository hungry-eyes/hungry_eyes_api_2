require 'yelp'

class HomeController < ApplicationController
  def index
    location = params[:location]
    yelp_hash = { term: params[:term], limit: 16 }
    movie_params = {}
    render json: DinnerMovie.new(location, yelp_hash, movie_params).display.to_json
  end

  def search
    parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('San Francisco', parameters).businesses
  end

  def show
  end
end
