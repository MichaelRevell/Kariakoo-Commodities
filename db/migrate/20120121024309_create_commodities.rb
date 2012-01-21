class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.String :name
      t.Integer :unit_id

      t.timestamps
    end
  end
end
