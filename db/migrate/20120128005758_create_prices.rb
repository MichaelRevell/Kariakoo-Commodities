class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      
      
      t.integer :unitPriceLow
      t.integer :unitPriceHigh
      t.integer :deliverPriceLow
      t.integer :deliverPriceHigh
      t.integer :wholesalePriceLow
      t.integer :wholesalePriceHigh
      t.integer :retailPriceLow
      t.integer :retailPriceHigh
      
      t.timestamps
    end
  end
end
