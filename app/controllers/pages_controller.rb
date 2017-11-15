class PagesController < ApplicationController

    def new
        @page = Page.new
    end
    
    def create
        page_params = params.require(:page).permit(:title, :body, :slug)
        @page = Page.new(page_param)
        @page.save
    end
end
