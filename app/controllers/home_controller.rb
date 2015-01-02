class HomeController < ApplicationController
  def index
    @sources = Source.all
  end
end
