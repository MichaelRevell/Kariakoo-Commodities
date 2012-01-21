class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name
      t.integer :unit_id

      t.timestamps
    end
  end
end
