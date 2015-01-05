class Dataslate < ActiveRecord::Base
  has_many :dataslate_sources
  has_many :sources, through: :dataslate_sources

  scope :role, ->(role_name) { where(role: role_name) }

  def most_recent_source
    sources.order(published: :desc).limit(1)
  end
end
