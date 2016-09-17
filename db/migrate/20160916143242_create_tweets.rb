class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets, id: false do |t|
      t.string :client_id
      t.string :tweet_id, primary_key: true
      t.text :tweet_text
      t.datetime :tweet_time
      t.integer :tweet_favorite_count
      t.integer :tweet_retweet_count
      t.string :referral_code

      t.timestamps
    end
  end
end
