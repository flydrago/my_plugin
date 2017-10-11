class CreateWickWalls < ActiveRecord::Migration[5.0]
  def change
    create_table :wick_walls do |t|
      t.string :last_squawk

      t.timestamps
    end
  end
end
