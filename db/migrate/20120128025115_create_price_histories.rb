class CreatePriceHistories < ActiveRecord::Migration
  def change
    create_table :price_histories do |t|
      t.integer :farmGateLow
      t.integer :farmGateHigh
      t.integer :deliverHigh
      t.integer :deliverLow
      t.integer :wholesaleHigh
      t.integer :wholesaleHigh
      t.integer :retailHigh
      t.integer :retailLow

      t.timestamps
    end
  end
end
