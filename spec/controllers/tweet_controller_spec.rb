=begin require 'rails_helper'

RSpec.describe TweetController, :type  => :controller do
	before (:each) do
    	@client = Client.new(id: '1', name: 'Anything', twitter_handle: "anything")
	end
	describe "get index" do
		it "has a 200 status code" do
      		get :index, :twitter_handle => @client.twitter_handle
      		expect(response.status).to eq(200)
    	end
		it "assigns @tweets" do
			tweet = Tweet.create
			get :index, :client => @client
			expect(assigns(:tweets)).to eq([tweet])
		end
		it "renders the index template" do
      		get :index, :client => @client
      		expect(response).to render_template("index")
    	end
	end
end