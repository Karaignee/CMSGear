class AddMaincatToGearPages < ActiveRecord::Migration
  def change
    add_reference :gear_pages, :maincat, index: true
  end
end
