class GearPage < ActiveRecord::Base
  belongs_to :brand
  belongs_to :artist
  belongs_to :genre

  has_ancestry
end
