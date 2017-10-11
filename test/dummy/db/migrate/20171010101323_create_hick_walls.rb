class CreateHickWalls < ActiveRecord::Migration[5.0]
  def change
    create_table :hick_walls do |t|
      t.string :last_squawk

      t.timestamps
    end
  end
end
