class DetailsController < ApplicationController
  def index
    @hall = Hall.find_by_id(detail_params[:id])
  end

  private
  def detail_params
    params.permit(:id)
  end
end
