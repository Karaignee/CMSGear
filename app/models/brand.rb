# == Schema Information
#
# Table name: brands
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  logo        :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Brand < ActiveRecord::Base
end
