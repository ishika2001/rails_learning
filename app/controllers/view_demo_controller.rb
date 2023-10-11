class ViewDemoController < ApplicationController
  layout "view_demo"
  def index 
    # render json: :view_demo, status: :unprocessable_entity
    # render  layout: "view_demo", except: [:index, :rss]
    # render html: "<strong>Not Found</strong>".html_safe 
    render :index, status: :unprocessable_entity 
  end  
end   