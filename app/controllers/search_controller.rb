class SearchController < ApplicationController
  def list
    @halls = Hall.all
  end

  private
  def user_params
    params.require(:search).permit(:keyword, :place)
  end
end
