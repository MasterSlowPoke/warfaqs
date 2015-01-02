class Dataslate < ActiveRecord::Base
  has_many :dataslate_sources
  has_many :sources, through: :dataslate_sources
end
