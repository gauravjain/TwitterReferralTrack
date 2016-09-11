require 'twitter'
require 'uri'
require 'cgi'

class TweetController < ApplicationController
  def index
  	@base_url = "http://3dhubs.refr.cc/"
    @tweets = $twitter.search('@3dhubs 3dhubs.refr.cc', options = {count: 20, include_entities: true})
#    @referral_code =[]
#    @tweets.each do |tweet|
#     uri = tweet.url[0].expanded_url
#	  @referral_code << uri.path
#  	end
  	#@referral = []
  	#@tweets.each do |tweet|
  	#	@uri = tweet.url[0].expanded_url
  	#	@uri = URI(@uri).query
  	#	@referral << Rack::Utils.parse_query @uri
  end
end
