class Source < ActiveRecord::Base
  has_many :dataslate_sources
  has_many :dataslates, through: :dataslate_source
end
