class NewsPlace < ActiveRecord::Base
  has_many :news_items

  set_primary_key :identifier

  
end