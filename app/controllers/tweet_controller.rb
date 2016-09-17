require 'twitter'

class TweetController < ApplicationController
  def index
  	client = Client.first; #for now I am using 'first' but later we will use 'take' or 'find_each' to perform search for all the clients
  	if(client.twitter_handle && client.refer_url)
      search_query = "@" + client.twitter_handle + " " +client.refer_url;
    	@tweets = $twitter.search(search_query, options = {count: 30, include_entities: true})
      @tweets.each do |tweet|
      	t = Tweet.new
      	t.client_id = client.id
     		t.tweet_id = tweet.id
     		t.tweet_text = tweet.full_text
     		t.tweet_time = tweet.created_at
     		t.tweet_favorite_count = tweet.favorite_count
     		t.tweet_retweet_count = tweet.retweet_count	
     		t.referral_code = tweet.urls[0].expanded_url.path.split('/').last 
     		t.save #saves the tweet data to the tweets database
     	end
    end
  end
end
