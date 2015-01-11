class Dataslate < ActiveRecord::Base
  include Picturable

  has_many :dataslate_sources
  has_many :dataslate_factions
  has_many :sources, through: :dataslate_sources
  has_many :factions, through: :dataslate_factions

  scope :role, ->(role_name) { where(role: role_name) }

  def most_recent_source
    sources.order(published: :desc).limit(1)
  end
end
