class CreateNewsPlaces < ActiveRecord::Migration
  def self.up
    create_table :news_places, :force => true do |t|
      t.string :identifier,:limit=>"20"
      t.string :name,:limit=>"20"
	    t.timestamps
	  end
    add_column :news_items,:identifier,:string,:limit=>"20"
    add_index :news_items,:identifier
  end

  def self.down
    drop_table :news_places
  end
end

