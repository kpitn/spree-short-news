class Admin::News::NewsPlacesController < Admin::BaseController
  resource_controller

#  create.wants.html  {redirect_to admin_news_news_places_url }
#  update.wants.html {redirect_to admin_news_news_places_url }

  def create
    news_place=NewsPlace.new(params[:news_place])
    news_place.identifier=params[:news_place][:identifier]
    if news_place.save
      redirect_to admin_news_news_places_url
    else
      render :action=>:new
    end
  end

  def update
    news_place=NewsPlace.find(params[:id])

    if news_place.update_attributes(params[:news_place])
      news_place.identifier=params[:news_place][:identifier]
      news_place.save
      redirect_to admin_news_news_places_url
    else
      render :action=>:edit
    end
  end

end