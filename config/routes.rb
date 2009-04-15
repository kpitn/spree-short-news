map.namespace :admin do |admin|
  admin.namespace :news do |news|
   news.resources :news_items
   news.resources :news_places
  end
end