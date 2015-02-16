# == Schema Information
#
# Table name: gear_pages
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  brand_id    :integer
#  artist_id   :integer
#  genre_id    :integer
#  ancestry    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class GearPage < ActiveRecord::Base
  belongs_to :brand
  belongs_to :artist
  belongs_to :genre

  has_ancestry

  # head_image - with default bouron wallpaper
  # gear profile image
  # array of feature images
  # body text
  # title
  # 
  # 
end
