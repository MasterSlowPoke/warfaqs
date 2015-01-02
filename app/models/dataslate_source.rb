class DataslateSource < ActiveRecord::Base
  validates :dataslate_id, :source_id, presence: true

  belongs_to :dataslate
  belongs_to :source
end
