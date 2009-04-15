class UpdateShortNews < ActiveRecord::Migration
  def self.up
    add_column :news_places, :maxlength, :integer, :limit=>4
  end

  def self.down
    remove_column :news_places, :maxlength
  end
end

