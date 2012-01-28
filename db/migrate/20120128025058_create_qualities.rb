class CreateQualities < ActiveRecord::Migration
  def change
    create_table :qualities do |t|
      t.string :type

      t.timestamps
    end
  end
end
