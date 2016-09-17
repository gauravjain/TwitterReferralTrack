class Tweet < ApplicationRecord
	belongs_to :client
	validates_uniqueness_of :tweet_id
	validates_presence_of :client_id, :tweet_id
end
