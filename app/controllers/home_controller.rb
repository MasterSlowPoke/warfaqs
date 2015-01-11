class HomeController < ApplicationController
  def index
    @factions = Faction.all
  end
end
