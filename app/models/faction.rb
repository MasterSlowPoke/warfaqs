class Faction < ActiveRecord::Base
  has_many :dataslate_factions
  has_many :dataslates, through: :dataslate_factions

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
