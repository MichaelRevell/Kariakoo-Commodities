class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :englishName
      t.string :swahiliName
      t.string :quality
      t.string :farmgate_unit
      t.string :delivered_unit
      t.string :wholesale_unit
      t.string :retail_unit

      t.timestamps
    end
  end
end
