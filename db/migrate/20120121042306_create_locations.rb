class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :region
      t.string :district
      t.string :ward
      t.string :town

      t.timestamps
    end
  end
end
