class HomeController < ApplicationController
    def index
        @medias = Instagram.tag_recent_media(URI.encode("ナイトプール"))
    end
    
    def free
        keyword = params[:key]
        @medias = Instagram.tag_recent_media(URI.encode(keyword),{:count => 50})          
    end   
end
