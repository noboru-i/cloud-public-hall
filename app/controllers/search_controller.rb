class SearchController < ApplicationController
  def list
    params = search_params
    @halls = Hall.search(params[:keyword], params[:place])
  end

  private
  def search_params
    params.require(:search).permit(:keyword, :place)
  end
end
