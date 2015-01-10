class DataslateFaction < ActiveRecord::Base
  validates :dataslate_id, :faction_id, presence: true

  belongs_to :dataslate
  belongs_to :faction
end
