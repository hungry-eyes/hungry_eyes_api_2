# Hungry Eyes API

## Description

Have you ever had one of those evenings when only cheap take-out food and
Patrick Swayze movies will suffice? We understand, and we did something
about it. Enjoy!

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


[![HUNGRY EYES](http://img.youtube.com/vi/WUxxTYFf-6E/0.jpg)](http://www.youtube.com/watch?v=WUxxTYFf-6E)
