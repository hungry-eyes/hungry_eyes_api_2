# Hungry Eyes API

## Description

Have you ever had one of those evenings when only cheap take-out food and
Patrick Swayze movies will suffice? We understand, and we did something
about it. Enjoy!
=======
Have you ever had one of those evenings when only cheap take-out food and Patrick Swayze movies will suffice? We understand, and we did something
about it.

This API combines location-based food search (using the [Yelp API](https://www.yelp.com/developers/documentation/v2/overview)), and a
Patrick Swayze movie title (using the [Netflix Roulette API](https://netflixroulette.net/api/) to deliver all the right ingredients for
a magical evening. The output from this API's endpoint is simply two data points: a random Patrick Swayze movie, and a random restaurant in a given location based
on food preferences input by the user.

## Instructions

Search results are obtained by pointing your browser to [http://localhost:3000/api/v1](http://localhost:3000/api/v1) and providing two search parameters: a location, and a food choice. Here is an example search using "DesMoines" as the location, and "burrito" as the food choice:

* [http://localhost:3000/api/v1?location=DesMoines&term=burrito](http://localhost:3000/api/v1?location=DesMoines&term=burrito)

The output should look a little like this:

{
"movie": "Ghost",
"dinner": "Lina's Mexican Food"
}

The "dinner": result is simply a random choice from your area, and the "movie": result is simply a random pick from among several Patrick Swayze titles. Refreshing the browser
will result in another random pairing.


You know you can't resist. Go ahead, click the link below!

[![HUNGRY EYES](http://img.youtube.com/vi/WUxxTYFf-6E/0.jpg)](http://www.youtube.com/watch?v=WUxxTYFf-6E)

## How the magic happens!

The Hungry Eyes API consumes two publicly available APIs on two different data sets. The first API that is utilized is Netflix Roulette and the second API is Yelp. The first and most important function of this API is to pull a random movie title from the Netflix Roulette API that is blessed to have Patrick Swayze as a cast member. We chose to pull a random movie title because we know it's not humanly possible to pick just one Patrick Swayze movie. The next function of the API pulls from the Yelp API which allows the user to select a type of take-out food (Chinese, burrito, pizza, etc.) based on a given location (zip code or city name). Now with a Swayze movie and take-out food in hand the magic can begin.


Pulling a random Patrick Swayze movie from Netflix Roulette:
```ruby
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
```

Pulling take-out food selected by location and terms(type of food):
```ruby
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

```
