require 'rails_helper'

RSpec.describe Client, :type => :model do 
	it "is valid with valid attributes" do
		expect(Client.new(id: '1', name: 'Anything')).to be_valid
	end
	it "is not valid without a id" do
		client = Client.new(id: nil, name:'Anything')
		expect(client).to_not be_valid
	end

	it "is not valid without a name" do
		client = Client.new(id: '1', name: nil)
		expect(client).to_not be_valid
	end

	it "should have many tweets" do
		assc = Client.reflect_on_association(:tweets)
		expect(assc.macro) ==  :has_many
	end

	#it { should have_many(:tweets) }
end