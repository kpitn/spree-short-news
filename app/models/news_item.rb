class NewsItem < ActiveRecord::Base
  belongs_to :news_place,:foreign_key=>"identifier"



  def self.show_news(identifier)
    NewsItem.find(:first,:conditions=>["identifier=? and published_start_at<?",identifier,Time.now],:order=>" RAND()")
  end
  
end