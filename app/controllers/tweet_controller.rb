require 'twitter'

class TweetController < ApplicationController
  def index
  	@client_handle = "@3dhubs"
  	@base_url = "3dhubs.refr.cc"
  	@search_query = @client_handle.to_s + " " + @base_url.to_s
    @tweets = $twitter.search(@search_query, options = {count: 20, include_entities: true})
  end
end
