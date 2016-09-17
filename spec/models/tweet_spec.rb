require 'rails_helper'

RSpec.describe Tweet, :type => :model do 
	let(:client) { Client.new(id: '1', name: 'Anything')}
	it "is valid with valid attributes" do
		expect(Tweet.new(client_id: '1', tweet_id: '444', client: client)).to be_valid
	end

	
	it "is not valid without a client" do
		expect(Tweet.new(client_id: '1', tweet_id: '333')).to_not be_valid
	end

	it "is not valid without a client_id" do
		tweet = Tweet.new(client_id: nil, tweet_id:'Anything')
		expect(tweet).to_not be_valid
	end

	it "is not valid without a tweet_id" do
		tweet = Tweet.new(client_id: '1', tweet_id: nil, client:client)
		expect(tweet).to_not be_valid
	end

	it "should belong to client" do
		assc = Tweet.reflect_on_association(:client)
		expect(assc.macro) ==  :belong_to
	end
end