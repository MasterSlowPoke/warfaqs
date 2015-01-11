class Faction < ActiveRecord::Base
  include Picturable

  has_many :dataslate_factions
  has_many :dataslates, through: :dataslate_factions
end
