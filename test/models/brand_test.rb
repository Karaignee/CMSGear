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

require 'test_helper'

class BrandTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
