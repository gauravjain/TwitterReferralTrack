require 'twitter'

class TweetController < ApplicationController
  def index
    @tweets = $twitter.user_timeline('ThrillLifeBlog', count: 20)
  end
  
end
