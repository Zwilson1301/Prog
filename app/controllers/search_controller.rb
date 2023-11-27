class SearchController < ApplicationController
  def index
    @query = perams[:query]
    @catigory_id = params[:catigory_id]
    @manufacturer_id = params[:manufacturer_id]
    
    @search = Search.new(@query, :catigory_id => @catigory_id, 
                         :manufaturer_id => @manufacturer_id)
    @devices = @search.results
  end
end
