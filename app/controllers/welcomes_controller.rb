class WelcomesController < ApplicationController

  def index
    @halls = Hall.all
  end
end
