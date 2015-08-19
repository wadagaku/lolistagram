class HomeController < ApplicationController
    def index
        @medias = Instagram.tag_recent_media(URI.encode("cute"))
    end
end
