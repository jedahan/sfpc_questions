# twitter
Twitter = require 'mtwitter'
restify = require 'restify'

credentials = require './credentials.json'

twitter = new Twitter credentials

twitter.get 'search/tweets', {q: 'node.js'}, (err, item) ->
  for tweet in item.statuses
    console.log tweet.text