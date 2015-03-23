class CreateMaincats < ActiveRecord::Migration
  def change
    create_table :maincats do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
