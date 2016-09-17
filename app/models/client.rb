class Client < ApplicationRecord
	has_many :tweets
	validates_presence_of :id , :name
end
