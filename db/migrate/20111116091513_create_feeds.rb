class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :url
      t.string :name
      t.string :feed_url
      t.string :author
      t.string :twitter_username

      t.timestamps
    end
  end
end
