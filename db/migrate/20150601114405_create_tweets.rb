class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets, id: false do |t|
      t.column :id, :integer, :limit => 8, :null => false
      t.column :text, :text
      t.column :json, :text
      t.column :retweeted, :boolean
      t.column :posted_at, :timestamp
      t.column :dumptter_version, :integer
      t.column :created_at, :timestamp
      t.column :updated_at, :timestamp
    end
    add_index :tweets, [ :id ], unique: true
  end
  def self.down
    drop_table :tweets
  end
end

