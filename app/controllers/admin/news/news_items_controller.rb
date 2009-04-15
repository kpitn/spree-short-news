class Admin::News::NewsItemsController < Admin::BaseController
  resource_controller


  create.wants.html  {redirect_to admin_news_news_items_url }
  update.wants.html {redirect_to admin_news_news_items_url }

  def index
    @news_places =NewsPlace.find(:all)
    if params[:identifier]
         @news_items=NewsItem.find_all_by_identifier(params[:identifier])
    else
       @news_items=NewsItem.find(:all)
    end
  end
  
  
end