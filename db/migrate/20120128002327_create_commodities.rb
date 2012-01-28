class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :nameEnglish
      t.string :nameSwahili
      t.string :quality

      t.timestamps
    end
  end
end
