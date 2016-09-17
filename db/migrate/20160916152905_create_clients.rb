class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients, id:false do |t|
      t.string :id, primary_key: true
      t.string :twitter_handle
      t.string :refer_url
      t.string :name

      t.timestamps
    end
  end
end
