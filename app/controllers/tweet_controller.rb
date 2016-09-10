require 'twitter'
require 'uri'
require 'cgi'

class TweetController < ApplicationController
  def index
    @tweets = $twitter.search('@3dhubs 3dhubs.refr.cc', options = {count: 20, include_entities: true})
  	#@referral = []
  	#@tweets.each do |tweet|
  	#	@uri = tweet.url[0].expanded_url
  	#	@uri = URI(@uri).query
  	#	@referral << Rack::Utils.parse_query @uri
  end
end
