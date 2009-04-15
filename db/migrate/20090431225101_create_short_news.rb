class CreateShortNews < ActiveRecord::Migration
  def self.up
    create_table :news_items, :force => true do |t|
      t.string :title
      t.text :body
      t.datetime :published_start_at
      t.datetime :published_end_at
	    t.timestamps
	  end
  end

  def self.down
    drop_table :news_items
  end
end

