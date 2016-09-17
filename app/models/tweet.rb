class Tweet < ApplicationRecord
	validates_uniqueness_of :tweet_id
end
