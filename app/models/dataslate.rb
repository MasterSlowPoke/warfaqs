class Dataslate < ActiveRecord::Base
  has_many :dataslate_sources
  has_many :sources, through: :dataslate_sources
  def most_recent_source
    sources.order(published: :desc).limit(1)
  end
end
