class WelcomesController < ApplicationController

  def index
    @halls = Hall.limit(5)
  end
end
