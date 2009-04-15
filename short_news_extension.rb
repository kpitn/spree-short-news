class ShortNewsExtension < Spree::Extension
  version "1.0"
  description "Short News"
  url "http://yourwebsite.com/"

  def activate
     Admin::ConfigurationsController.class_eval do
      before_filter :add_short_news_links, :only => :index

      def add_short_news_links
        #@extension_links << {:link => admin_news_path, :link_text => t('short_news'), :description => t('short_news_description')}
      end
    end

  end
end